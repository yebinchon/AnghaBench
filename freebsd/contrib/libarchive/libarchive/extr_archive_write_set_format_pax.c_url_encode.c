
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (int) ;

__attribute__((used)) static char *
url_encode(const char *in)
{
 const char *s;
 char *d;
 int out_len = 0;
 char *out;

 for (s = in; *s != '\0'; s++) {
  if (*s < 33 || *s > 126 || *s == '%' || *s == '=')
   out_len += 3;
  else
   out_len++;
 }

 out = (char *)malloc(out_len + 1);
 if (out == ((void*)0))
  return (((void*)0));

 for (s = in, d = out; *s != '\0'; s++) {

  if (*s < 33 || *s > 126 || *s == '%' || *s == '=') {

   *d++ = '%';
   *d++ = "0123456789ABCDEF"[0x0f & (*s >> 4)];
   *d++ = "0123456789ABCDEF"[0x0f & *s];
  } else {
   *d++ = *s;
  }
 }
 *d = '\0';
 return (out);
}
