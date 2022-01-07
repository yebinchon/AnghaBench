
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
union ctl_io {TYPE_2__ io_hdr; } ;
struct ctl_lun {int lun_lock; TYPE_1__* be_lun; } ;
struct TYPE_3__ {scalar_t__ serseq; } ;


 int CTL_FLAG_SERSEQ_DONE ;
 struct ctl_lun* CTL_LUN (union ctl_io*) ;
 scalar_t__ CTL_LUN_SERSEQ_OFF ;
 int FALSE ;
 int ctl_try_unblock_others (struct ctl_lun*,union ctl_io*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
ctl_serseq_done(union ctl_io *io)
{
 struct ctl_lun *lun = CTL_LUN(io);;

 if (lun->be_lun == ((void*)0) ||
     lun->be_lun->serseq == CTL_LUN_SERSEQ_OFF)
  return;
 mtx_lock(&lun->lun_lock);
 io->io_hdr.flags |= CTL_FLAG_SERSEQ_DONE;
 ctl_try_unblock_others(lun, io, FALSE);
 mtx_unlock(&lun->lun_lock);
}
