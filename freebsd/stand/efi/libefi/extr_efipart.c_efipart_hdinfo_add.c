
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * pd_devsw; scalar_t__ pd_unit; } ;
typedef TYPE_1__ pdinfo_t ;
typedef int EFI_DEVICE_PATH ;


 int STAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 TYPE_1__* STAILQ_LAST (int *,int ,int ) ;
 int efipart_hddev ;
 scalar_t__ efipart_hdinfo_add_node (TYPE_1__*,int *) ;
 int hdinfo ;
 int pd_link ;
 int pdinfo ;

__attribute__((used)) static void
efipart_hdinfo_add(pdinfo_t *hd, EFI_DEVICE_PATH *node)
{
 pdinfo_t *last;

 if (efipart_hdinfo_add_node(hd, node))
  return;

 last = STAILQ_LAST(&hdinfo, pdinfo, pd_link);
 if (last != ((void*)0))
  hd->pd_unit = last->pd_unit + 1;
 else
  hd->pd_unit = 0;


 hd->pd_devsw = &efipart_hddev;
 STAILQ_INSERT_TAIL(&hdinfo, hd, pd_link);
}
