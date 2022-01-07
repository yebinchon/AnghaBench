
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct so_list {TYPE_1__* lm_info; } ;
struct TYPE_2__ {struct TYPE_2__* lm; } ;


 int xfree (TYPE_1__*) ;

__attribute__((used)) static void
sunos_free_so (struct so_list *so)
{
  xfree (so->lm_info->lm);
  xfree (so->lm_info);
}
