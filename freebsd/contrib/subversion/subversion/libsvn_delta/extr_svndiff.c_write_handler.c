
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_txdelta_window_t ;
typedef scalar_t__ svn_filesize_t ;
typedef int svn_error_t ;
struct decode_baton {scalar_t__ header_bytes; int version; scalar_t__ window_header_len; scalar_t__ last_sview_offset; scalar_t__ last_sview_len; scalar_t__ sview_offset; scalar_t__ sview_len; scalar_t__ inslen; scalar_t__ newlen; TYPE_1__* buffer; int subpool; int consumer_baton; int (* consumer_func ) (int *,int ) ;scalar_t__ tview_len; } ;
typedef scalar_t__ apr_size_t ;
struct TYPE_3__ {int len; scalar_t__ data; } ;


 scalar_t__ MAX_INSTRUCTION_SECTION_LEN ;
 scalar_t__ SVNDIFF_HEADER_SIZE ;
 scalar_t__ SVNDIFF_V0 ;
 scalar_t__ SVNDIFF_V1 ;
 scalar_t__ SVNDIFF_V2 ;
 scalar_t__ SVN_DELTA_WINDOW_SIZE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_SVNDIFF_BACKWARD_VIEW ;
 int SVN_ERR_SVNDIFF_CORRUPT_WINDOW ;
 int SVN_ERR_SVNDIFF_INVALID_HEADER ;
 int * SVN_NO_ERROR ;
 int SVN__MAX_ENCODED_UINT_LEN ;
 int _ (char*) ;
 unsigned char* decode_file_offset (scalar_t__*,unsigned char const*,unsigned char const*) ;
 unsigned char* decode_size (scalar_t__*,unsigned char const*,unsigned char const*) ;
 int decode_window (int *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,unsigned char const*,int ,int) ;
 scalar_t__ memcmp (char const*,scalar_t__,scalar_t__) ;
 int stub1 (int *,int ) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_pool_clear (int ) ;
 int svn_stringbuf_appendbytes (TYPE_1__*,char const*,scalar_t__) ;
 int svn_stringbuf_remove (TYPE_1__*,int ,int) ;

__attribute__((used)) static svn_error_t *
write_handler(void *baton,
              const char *buffer,
              apr_size_t *len)
{
  struct decode_baton *db = (struct decode_baton *) baton;
  const unsigned char *p, *end;
  apr_size_t buflen = *len;


  if (db->header_bytes < SVNDIFF_HEADER_SIZE)
    {
      apr_size_t nheader = SVNDIFF_HEADER_SIZE - db->header_bytes;
      if (nheader > buflen)
        nheader = buflen;
      if (memcmp(buffer, SVNDIFF_V0 + db->header_bytes, nheader) == 0)
        db->version = 0;
      else if (memcmp(buffer, SVNDIFF_V1 + db->header_bytes, nheader) == 0)
        db->version = 1;
      else if (memcmp(buffer, SVNDIFF_V2 + db->header_bytes, nheader) == 0)
        db->version = 2;
      else
        return svn_error_create(SVN_ERR_SVNDIFF_INVALID_HEADER, ((void*)0),
                                _("Svndiff has invalid header"));
      buflen -= nheader;
      buffer += nheader;
      db->header_bytes += nheader;
    }


  svn_stringbuf_appendbytes(db->buffer, buffer, buflen);
  while (1)
    {
      svn_txdelta_window_t window;


      p = (const unsigned char *) db->buffer->data;
      end = (const unsigned char *) db->buffer->data + db->buffer->len;

      if (db->window_header_len == 0)
        {
          svn_filesize_t sview_offset;
          apr_size_t sview_len, tview_len, inslen, newlen;
          const unsigned char *hdr_start = p;

          p = decode_file_offset(&sview_offset, p, end);
          if (p == ((void*)0))
              break;

          p = decode_size(&sview_len, p, end);
          if (p == ((void*)0))
              break;

          p = decode_size(&tview_len, p, end);
          if (p == ((void*)0))
              break;

          p = decode_size(&inslen, p, end);
          if (p == ((void*)0))
              break;

          p = decode_size(&newlen, p, end);
          if (p == ((void*)0))
              break;

          if (tview_len > SVN_DELTA_WINDOW_SIZE ||
              sview_len > SVN_DELTA_WINDOW_SIZE ||

              newlen > SVN_DELTA_WINDOW_SIZE + SVN__MAX_ENCODED_UINT_LEN ||
              inslen > MAX_INSTRUCTION_SECTION_LEN)
            return svn_error_create(
                     SVN_ERR_SVNDIFF_CORRUPT_WINDOW, ((void*)0),
                     _("Svndiff contains a too-large window"));


          if (sview_offset < 0 || inslen + newlen < inslen
              || sview_len + tview_len < sview_len
              || (apr_size_t)sview_offset + sview_len < (apr_size_t)sview_offset)
            return svn_error_create(
                      SVN_ERR_SVNDIFF_CORRUPT_WINDOW, ((void*)0),
                      _("Svndiff contains corrupt window header"));


          if (sview_len > 0
              && (sview_offset < db->last_sview_offset
                  || (sview_offset + sview_len
                      < db->last_sview_offset + db->last_sview_len)))
            return svn_error_create(
                     SVN_ERR_SVNDIFF_BACKWARD_VIEW, ((void*)0),
                     _("Svndiff has backwards-sliding source views"));


          db->window_header_len = p - hdr_start;
          db->sview_offset = sview_offset;
          db->sview_len = sview_len;
          db->tview_len = tview_len;
          db->inslen = inslen;
          db->newlen = newlen;
        }
      else
        {

          p += db->window_header_len;
        }



      if ((apr_size_t) (end - p) < db->inslen + db->newlen)
        return SVN_NO_ERROR;


      SVN_ERR(decode_window(&window, db->sview_offset, db->sview_len,
                            db->tview_len, db->inslen, db->newlen, p,
                            db->subpool, db->version));
      SVN_ERR(db->consumer_func(&window, db->consumer_baton));

      p += db->inslen + db->newlen;


      svn_stringbuf_remove(db->buffer, 0, db->buffer->len - (end - p));


      db->window_header_len = 0;


      db->last_sview_offset = db->sview_offset;
      db->last_sview_len = db->sview_len;


      svn_pool_clear(db->subpool);
    }





  if (db->buffer->len > 5 * SVN__MAX_ENCODED_UINT_LEN)
    return svn_error_create(SVN_ERR_SVNDIFF_CORRUPT_WINDOW, ((void*)0),
                            _("Svndiff contains a too-large window header"));

  return SVN_NO_ERROR;
}
