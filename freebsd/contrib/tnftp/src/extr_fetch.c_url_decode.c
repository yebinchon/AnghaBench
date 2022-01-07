
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EMPTYSTRING (char*) ;
 int HEXTOINT (unsigned char) ;
 scalar_t__ isxdigit (unsigned char) ;

__attribute__((used)) static void
url_decode(char *url)
{
 unsigned char *p, *q;

 if (EMPTYSTRING(url))
  return;
 p = q = (unsigned char *)url;


 while (*p) {
  if (p[0] == '%'
      && p[1] && isxdigit((unsigned char)p[1])
      && p[2] && isxdigit((unsigned char)p[2])) {
   *q++ = (p[1] - (isdigit(p[1]) ? '0' : (islower(p[1]) ? 'a' : 'A') - 10)) * 16 + (p[2] - (isdigit(p[2]) ? '0' : (islower(p[2]) ? 'a' : 'A') - 10));
   p+=3;
  } else
   *q++ = *p++;
 }
 *q = '\0';
}
