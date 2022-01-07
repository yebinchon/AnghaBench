
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
strip_components(const char *p, int elements)
{

 while (elements > 0) {
  switch (*p++) {
  case '/':



   elements--;
   break;
  case '\0':

   return (((void*)0));
  }
 }






 for (;;) {
  switch (*p) {
  case '/':



   ++p;
   break;
  case '\0':
   return (((void*)0));
  default:
   return (p);
  }
 }
}
