
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int apr_size_t ;


 scalar_t__ VALID_LITERAL (char) ;
 char const* hextab ;
 char* strchr (char const*,char) ;
 int svn_stringbuf_appendbyte (int *,char) ;

__attribute__((used)) static void
decode_bytes(svn_stringbuf_t *str, const char *data, apr_size_t len,
             char *inbuf, int *inbuflen)
{
  const char *p, *find1, *find2;
  char c;

  for (p = data; p <= data + len; p++)
    {

      inbuf[(*inbuflen)++] = *p;
      if (*inbuf != '=')
        {

          if (VALID_LITERAL(*inbuf))
            svn_stringbuf_appendbyte(str, *inbuf);
          *inbuflen = 0;
        }
      else if (*inbuf == '=' && *inbuflen == 2 && inbuf[1] == '\n')
        {

          *inbuflen = 0;
        }
      else if (*inbuf == '=' && *inbuflen == 3)
        {

          find1 = strchr(hextab, inbuf[1]);
          find2 = strchr(hextab, inbuf[2]);
          if (find1 != ((void*)0) && find2 != ((void*)0))
            {
              c = (char)(((find1 - hextab) << 4) | (find2 - hextab));
              svn_stringbuf_appendbyte(str, c);
            }
          *inbuflen = 0;
        }
    }
}
