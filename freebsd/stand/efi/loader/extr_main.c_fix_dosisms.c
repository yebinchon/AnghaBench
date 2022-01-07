
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isupper (char) ;
 char tolower (char) ;

__attribute__((used)) static void
fix_dosisms(char *p)
{
 while (*p) {
  if (isupper(*p))
   *p = tolower(*p);
  else if (*p == '\\')
   *p = '/';
  p++;
 }
}
