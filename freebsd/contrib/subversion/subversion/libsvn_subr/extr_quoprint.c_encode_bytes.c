
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_stringbuf_t ;
typedef int apr_size_t ;


 scalar_t__ ENCODE_AS_LITERAL (char const) ;
 int QUOPRINT_LINELEN ;
 char* hextab ;
 int svn_stringbuf_appendbyte (int *,char const) ;
 int svn_stringbuf_appendbytes (int *,char*,int) ;
 int svn_stringbuf_appendcstr (int *,char*) ;

__attribute__((used)) static void
encode_bytes(svn_stringbuf_t *str, const char *data, apr_size_t len,
             int *linelen)
{
  char buf[3];
  const char *p;


  for (p = data; p < data + len; p++)
    {

      if (ENCODE_AS_LITERAL(*p))
        {
          svn_stringbuf_appendbyte(str, *p);
          (*linelen)++;
        }
      else
        {
          buf[0] = '=';
          buf[1] = hextab[(*p >> 4) & 0xf];
          buf[2] = hextab[*p & 0xf];
          svn_stringbuf_appendbytes(str, buf, 3);
          *linelen += 3;
        }


      if (*linelen + 3 > QUOPRINT_LINELEN)
        {
          svn_stringbuf_appendcstr(str, "=\n");
          *linelen = 0;
        }
    }
}
