
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_ALPHA (char) ;
 int IS_DIGIT (char) ;

void
strident_canon(char *s, size_t n)
{
 char c;
 char *end = s + n - 1;

 if ((c = *s) == 0)
  return;

 if (!IS_ALPHA(c) && c != '_')
  *s = '_';

 while (s < end && ((c = *(++s)) != 0)) {
  if (!IS_ALPHA(c) && !IS_DIGIT(c) && c != '_')
   *s = '_';
 }
 *s = 0;
}
