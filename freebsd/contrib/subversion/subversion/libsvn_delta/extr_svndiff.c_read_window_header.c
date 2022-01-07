
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stream_t ;
typedef int svn_filesize_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_size_t ;


 scalar_t__ MAX_INSTRUCTION_SECTION_LEN ;
 scalar_t__ SVN_DELTA_WINDOW_SIZE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_SVNDIFF_CORRUPT_WINDOW ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN__MAX_ENCODED_UINT_LEN ;
 int _ (char*) ;
 int read_one_byte (unsigned char*,int *) ;
 int read_one_size (scalar_t__*,scalar_t__*,int *) ;
 int * svn_error_create (int ,int *,int ) ;

__attribute__((used)) static svn_error_t *
read_window_header(svn_stream_t *stream, svn_filesize_t *sview_offset,
                   apr_size_t *sview_len, apr_size_t *tview_len,
                   apr_size_t *inslen, apr_size_t *newlen,
                   apr_size_t *header_len)
{
  unsigned char c;


  *header_len = 0;
  *sview_offset = 0;
  while (1)
    {
      SVN_ERR(read_one_byte(&c, stream));
      ++*header_len;
      *sview_offset = (*sview_offset << 7) | (c & 0x7f);
      if (!(c & 0x80))
        break;
    }


  SVN_ERR(read_one_size(sview_len, header_len, stream));
  SVN_ERR(read_one_size(tview_len, header_len, stream));
  SVN_ERR(read_one_size(inslen, header_len, stream));
  SVN_ERR(read_one_size(newlen, header_len, stream));

  if (*tview_len > SVN_DELTA_WINDOW_SIZE ||
      *sview_len > SVN_DELTA_WINDOW_SIZE ||

      *newlen > SVN_DELTA_WINDOW_SIZE + SVN__MAX_ENCODED_UINT_LEN ||
      *inslen > MAX_INSTRUCTION_SECTION_LEN)
    return svn_error_create(SVN_ERR_SVNDIFF_CORRUPT_WINDOW, ((void*)0),
                            _("Svndiff contains a too-large window"));


  if (*sview_offset < 0 || *inslen + *newlen < *inslen
      || *sview_len + *tview_len < *sview_len
      || (apr_size_t)*sview_offset + *sview_len < (apr_size_t)*sview_offset)
    return svn_error_create(SVN_ERR_SVNDIFF_CORRUPT_WINDOW, ((void*)0),
                            _("Svndiff contains corrupt window header"));

  return SVN_NO_ERROR;
}
