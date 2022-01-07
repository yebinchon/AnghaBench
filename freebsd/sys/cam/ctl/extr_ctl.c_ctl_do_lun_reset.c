
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
union ctl_io {TYPE_1__ io_hdr; } ;
typedef int uint32_t ;
struct ctl_lun {int lun_lock; scalar_t__ prevent_count; scalar_t__ prevent; int flags; int ** pending_sense; int ooa_queue; } ;
typedef int ctl_ua_type ;


 int CTL_FLAG_ABORT ;
 int CTL_FLAG_ABORT_STATUS ;
 int CTL_LUN_RESERVED ;
 int CTL_MAX_INITIATORS ;
 int FALSE ;
 int M_CTL ;
 scalar_t__ TAILQ_FIRST (int *) ;
 scalar_t__ TAILQ_NEXT (TYPE_1__*,int ) ;
 int ctl_clear_mask (scalar_t__,int) ;
 int ctl_est_ua_all (struct ctl_lun*,int,int ) ;
 int ctl_max_ports ;
 int ctl_tpc_lun_clear (struct ctl_lun*,int) ;
 int ctl_try_unblock_io (struct ctl_lun*,union ctl_io*,int ) ;
 int free (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ooa_links ;

__attribute__((used)) static void
ctl_do_lun_reset(struct ctl_lun *lun, uint32_t initidx, ctl_ua_type ua_type)
{
 union ctl_io *xio;
 int i;

 mtx_lock(&lun->lun_lock);

 for (xio = (union ctl_io *)TAILQ_FIRST(&lun->ooa_queue); xio != ((void*)0);
      xio = (union ctl_io *)TAILQ_NEXT(&xio->io_hdr, ooa_links)) {
  xio->io_hdr.flags |= CTL_FLAG_ABORT | CTL_FLAG_ABORT_STATUS;
  ctl_try_unblock_io(lun, xio, FALSE);
 }

 for (i = 0; i < ctl_max_ports; i++) {
  free(lun->pending_sense[i], M_CTL);
  lun->pending_sense[i] = ((void*)0);
 }

 lun->flags &= ~CTL_LUN_RESERVED;

 if (lun->prevent) {
  for (i = 0; i < CTL_MAX_INITIATORS; i++)
   ctl_clear_mask(lun->prevent, i);
  lun->prevent_count = 0;
 }

 ctl_tpc_lun_clear(lun, -1);




 ctl_est_ua_all(lun, -1, ua_type);

 mtx_unlock(&lun->lun_lock);
}
