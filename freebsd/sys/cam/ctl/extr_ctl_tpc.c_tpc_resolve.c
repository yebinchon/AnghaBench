
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct tpc_list {int ncscd; int * cscd; int init_port; TYPE_2__* lun; } ;
struct TYPE_4__ {int ctl_softc; int lun; TYPE_1__* be_lun; } ;
struct TYPE_3__ {int blocksize; int pblockexp; int pblockoff; } ;


 int UINT64_MAX ;
 int tpcl_resolve (int ,int ,int *,int*,int*,int*) ;

__attribute__((used)) static uint64_t
tpc_resolve(struct tpc_list *list, uint16_t idx, uint32_t *ss,
    uint32_t *pb, uint32_t *pbo)
{

 if (idx == 0xffff) {
  if (ss && list->lun->be_lun)
   *ss = list->lun->be_lun->blocksize;
  if (pb && list->lun->be_lun)
   *pb = list->lun->be_lun->blocksize <<
       list->lun->be_lun->pblockexp;
  if (pbo && list->lun->be_lun)
   *pbo = list->lun->be_lun->blocksize *
       list->lun->be_lun->pblockoff;
  return (list->lun->lun);
 }
 if (idx >= list->ncscd)
  return (UINT64_MAX);
 return (tpcl_resolve(list->lun->ctl_softc,
     list->init_port, &list->cscd[idx], ss, pb, pbo));
}
