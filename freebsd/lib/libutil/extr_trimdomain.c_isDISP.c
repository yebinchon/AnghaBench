
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strspn (char const*,char*) ;

__attribute__((used)) static int
isDISP(const char *disp)
{
 size_t w;
 int res;

 w = strspn(disp, "0123456789");
 res = 0;
 if (w > 0) {
  if (disp[w] == '\0')
   res = 1;
  else if (disp[w] == '.') {
   disp += w + 1;
   w = strspn(disp, "0123456789");
   if (w > 0 && disp[w] == '\0')
    res = 1;
  }
 }
 return (res);
}
