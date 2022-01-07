
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct in_addr {int s_addr; } ;
typedef TYPE_3__* res_state ;
struct TYPE_7__ {unsigned int nsort; TYPE_2__* sort_list; } ;
struct TYPE_5__ {int s_addr; } ;
struct TYPE_6__ {int mask; TYPE_1__ addr; } ;


 int _MAXADDRS ;

__attribute__((used)) static void
addrsort(char **ap, int num, res_state res)
{
 int i, j;
 char **p;
 short aval[_MAXADDRS];
 int needsort = 0;

 p = ap;
 for (i = 0; i < num; i++, p++) {
     for (j = 0 ; (unsigned)j < res->nsort; j++)
  if (res->sort_list[j].addr.s_addr ==
      (((struct in_addr *)(*p))->s_addr & res->sort_list[j].mask))
   break;
     aval[i] = j;
     if (needsort == 0 && i > 0 && j < aval[i-1])
  needsort = i;
 }
 if (!needsort)
     return;

 while (needsort < num) {
     for (j = needsort - 1; j >= 0; j--) {
  if (aval[j] > aval[j+1]) {
      char *hp;

      i = aval[j];
      aval[j] = aval[j+1];
      aval[j+1] = i;

      hp = ap[j];
      ap[j] = ap[j+1];
      ap[j+1] = hp;

  } else
      break;
     }
     needsort++;
 }
}
