
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int map_len; TYPE_1__* map; } ;
typedef TYPE_2__ td_thragent_t ;
typedef scalar_t__ lwpid_t ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ lwp; } ;


 scalar_t__ PT_LWP ;
 scalar_t__ PT_NONE ;

__attribute__((used)) static void
pt_unmap_lwp(const td_thragent_t *ta, lwpid_t lwp)
{
 unsigned int i;

 for (i = 0; i < ta->map_len; ++i) {
  if (ta->map[i].type == PT_LWP && ta->map[i].lwp == lwp) {
   ta->map[i].type = PT_NONE;
   return;
  }
 }
}
