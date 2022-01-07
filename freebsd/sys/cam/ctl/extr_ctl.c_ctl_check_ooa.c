
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ctl_io {int io_hdr; } ;
struct ctl_lun {int lun_lock; } ;
typedef scalar_t__ ctl_action ;


 scalar_t__ CTL_ACTION_PASS ;
 int MA_OWNED ;
 scalar_t__ TAILQ_PREV (int *,int ,int ) ;
 scalar_t__ ctl_check_for_blockage (struct ctl_lun*,union ctl_io*,union ctl_io*) ;
 int ctl_ooaq ;
 int mtx_assert (int *,int ) ;
 int ooa_links ;

__attribute__((used)) static ctl_action
ctl_check_ooa(struct ctl_lun *lun, union ctl_io *pending_io,
       union ctl_io **starting_io)
{
 union ctl_io *ooa_io;
 ctl_action action;

 mtx_assert(&lun->lun_lock, MA_OWNED);







 for (ooa_io = *starting_io; ooa_io != ((void*)0);
      ooa_io = (union ctl_io *)TAILQ_PREV(&ooa_io->io_hdr, ctl_ooaq,
      ooa_links)){
  action = ctl_check_for_blockage(lun, pending_io, ooa_io);
  if (action != CTL_ACTION_PASS) {
   *starting_io = ooa_io;
   return (action);
  }
 }

 *starting_io = ((void*)0);
 return (CTL_ACTION_PASS);
}
