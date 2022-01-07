
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fman_rg {TYPE_1__* fpm_rg; TYPE_3__* bmi_rg; TYPE_2__* qmi_rg; } ;
struct TYPE_6__ {int fmbm_cfg1; int fmbm_cfg2; int fmbm_init; } ;
struct TYPE_5__ {int fmqm_gc; } ;
struct TYPE_4__ {int fm_rcr; } ;


 int iowrite32be (int ,int *) ;

void fman_free_resources(struct fman_rg *fman_rg)
{

 iowrite32be(0, &fman_rg->bmi_rg->fmbm_init);
 iowrite32be(0, &fman_rg->qmi_rg->fmqm_gc);


 iowrite32be(0, &fman_rg->bmi_rg->fmbm_cfg2);
 iowrite32be(0, &fman_rg->bmi_rg->fmbm_cfg1);


 iowrite32be(0, &fman_rg->fpm_rg->fm_rcr);
}
