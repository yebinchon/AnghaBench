
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t os_strlen (char const*) ;

size_t utf8_unescape(const char *inp, size_t in_size,
       char *outp, size_t out_size)
{
 size_t res_size = 0;

 if (!inp || !outp)
  return 0;

 if (!in_size)
  in_size = os_strlen(inp);


 if (*inp == '\'' && in_size) {
  inp++;
  in_size--;
 }

 while (in_size) {
  in_size--;
  if (res_size >= out_size)
   return 0;

  switch (*inp) {
  case '\'':

   *outp = '\0';
   return res_size;

  case '\\':
   if (!in_size)
    return 0;
   in_size--;
   inp++;


  default:
   *outp++ = *inp++;
   res_size++;
  }
 }


 if (res_size < out_size)
  *outp = '\0';

 return res_size;
}
