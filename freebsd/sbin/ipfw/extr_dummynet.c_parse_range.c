
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int do_pipe; } ;


 int DN_MAX_ID ;
 TYPE_1__ co ;
 int strtoul (char*,char**,int) ;
 int warn (char*,char*) ;

__attribute__((used)) static int
parse_range(int ac, char *av[], uint32_t *v, int len)
{
 int n = 0;
 char *endptr, *s;
 uint32_t base[2];

 if (v == ((void*)0) || len < 2) {
  v = base;
  len = 2;
 }

 for (s = *av; s != ((void*)0); av++, ac--) {
  v[0] = strtoul(s, &endptr, 10);
  v[1] = (*endptr != '-') ? v[0] :
    strtoul(endptr+1, &endptr, 10);
  if (*endptr == '\0') {
   s = (ac > 0) ? *(av+1) : ((void*)0);
  } else {
   if (*endptr != ',') {
    warn("invalid number: %s", s);
    s = ++endptr;
    continue;
   }

   s = ++endptr;
   ac++;
   av--;
  }
  if (v[1] < v[0] ||
   v[0] >= DN_MAX_ID-1 ||
   v[1] >= DN_MAX_ID-1) {
   continue;
  }
  n++;

  if (co.do_pipe == 1) {
   v[0] += DN_MAX_ID;
   v[1] += DN_MAX_ID;
  }
  v = (n*2 < len) ? v + 2 : base;
 }
 return n;
}
