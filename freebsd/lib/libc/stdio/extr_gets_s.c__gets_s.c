
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rsize_t ;


 int E2BIG ;
 int EOF ;
 int ORIENT (int ,int) ;
 int __sgetc (int ) ;
 int __throw_constraint_handler_s (char*,int ) ;
 int stdin ;

__attribute__((used)) static inline char *
_gets_s(char *buf, rsize_t n)
{
 int c;
 char *s;

 ORIENT(stdin, -1);
 for (s = buf, n--; (c = __sgetc(stdin)) != '\n' && n > 0 ; n--) {
  if (c == EOF) {
   if (s == buf) {
    return (((void*)0));
   } else
    break;
  } else
   *s++ = c;
 }





 if (n == 0) {

  while ((c = __sgetc(stdin)) != '\n' && c != EOF);

  __throw_constraint_handler_s("gets_s : end of buffer", E2BIG);
  return (((void*)0));
 }
 *s = 0;
 return (buf);
}
