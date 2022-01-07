
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct so_list {int lm_info; } ;


 int xfree (int ) ;

__attribute__((used)) static void
kld_free_so (struct so_list *so)
{

 xfree(so->lm_info);
}
