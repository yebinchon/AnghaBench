
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_lun {int tpc_lists; } ;


 int TAILQ_INIT (int *) ;

void
ctl_tpc_lun_init(struct ctl_lun *lun)
{

 TAILQ_INIT(&lun->tpc_lists);
}
