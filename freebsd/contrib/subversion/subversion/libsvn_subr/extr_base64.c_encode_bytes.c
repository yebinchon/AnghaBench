
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ len; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_size_t ;


 int BASE64_LINELEN ;
 int BYTES_PER_LINE ;
 int encode_group (unsigned char*,char*) ;
 int encode_line (TYPE_1__*,char const*) ;
 int memcpy (unsigned char*,char const*,int) ;
 int svn_stringbuf_appendbyte (TYPE_1__*,char) ;
 int svn_stringbuf_appendbytes (TYPE_1__*,char*,int) ;
 int svn_stringbuf_ensure (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void
encode_bytes(svn_stringbuf_t *str, const void *data, apr_size_t len,
             unsigned char *inbuf, size_t *inbuflen, size_t *linelen,
             svn_boolean_t break_lines)
{
  char group[4];
  const char *p = data, *end = p + len;
  apr_size_t buflen;





  buflen = len * 4 / 3 + 4;
  if (break_lines)
    {

      buflen += buflen / BASE64_LINELEN;
    }
  svn_stringbuf_ensure(str, str->len + buflen);


  while ((end - p) >= (3 - *inbuflen))
    {



      if ( *inbuflen == 0
          && (*linelen == 0 || !break_lines)
          && (end - p >= BYTES_PER_LINE))
        {

          encode_line(str, p);
          p += BYTES_PER_LINE;
          *linelen += BASE64_LINELEN;
        }
      else
        {


          memcpy(inbuf + *inbuflen, p, 3 - *inbuflen);
          p += (3 - *inbuflen);
          encode_group(inbuf, group);
          svn_stringbuf_appendbytes(str, group, 4);
          *inbuflen = 0;
          *linelen += 4;
        }


      if (break_lines && *linelen == BASE64_LINELEN)
        {
          svn_stringbuf_appendbyte(str, '\n');
          *linelen = 0;
        }
    }


  memcpy(inbuf + *inbuflen, p, end - p);
  *inbuflen += (end - p);
}
