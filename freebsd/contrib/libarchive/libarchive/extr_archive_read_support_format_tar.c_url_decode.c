
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (scalar_t__) ;
 scalar_t__ strlen (char const*) ;
 int tohex (char const) ;

__attribute__((used)) static char *
url_decode(const char *in)
{
 char *out, *d;
 const char *s;

 out = (char *)malloc(strlen(in) + 1);
 if (out == ((void*)0))
  return (((void*)0));
 for (s = in, d = out; *s != '\0'; ) {
  if (s[0] == '%' && s[1] != '\0' && s[2] != '\0') {

   int digit1 = tohex(s[1]);
   int digit2 = tohex(s[2]);
   if (digit1 >= 0 && digit2 >= 0) {

    s += 3;

    *d++ = ((digit1 << 4) | digit2);
    continue;
   }

  }
  *d++ = *s++;
 }
 *d = '\0';
 return (out);
}
