
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct _s_x {int x; int s; } ;


 int snprintf (char*,size_t,char*,char const*,int ) ;

void
print_flags_buffer(char *buf, size_t sz, struct _s_x *list, uint32_t set)
{
 char const *comma = "";
 int i, l;

 for (i = 0; list[i].x != 0; i++) {
  if ((set & list[i].x) == 0)
   continue;

  set &= ~list[i].x;
  l = snprintf(buf, sz, "%s%s", comma, list[i].s);
  if (l >= sz)
   return;
  comma = ",";
  buf += l;
  sz -=l;
 }
}
