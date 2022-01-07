
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int path; } ;
union ccb {TYPE_3__ ccb_h; } ;
struct cam_path {int dummy; } ;
struct TYPE_5__ {int tqe; } ;
struct TYPE_4__ {int ccb_scanq; int xpt_topo_lock; } ;


 int PRIBIO ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 scalar_t__ TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,TYPE_3__*,int ) ;
 int msleep (int *,int *,int ,char*,int ) ;
 TYPE_2__ sim_links ;
 int xpt_action (union ccb*) ;
 int xpt_copy_path (struct cam_path*,int ) ;
 int xpt_lock_buses () ;
 int xpt_path_lock (struct cam_path*) ;
 int xpt_path_unlock (struct cam_path*) ;
 int xpt_release_path (struct cam_path*) ;
 int xpt_unlock_buses () ;
 TYPE_1__ xsoftc ;

__attribute__((used)) static void
xpt_scanner_thread(void *dummy)
{
 union ccb *ccb;
 struct cam_path path;

 xpt_lock_buses();
 for (;;) {
  if (TAILQ_EMPTY(&xsoftc.ccb_scanq))
   msleep(&xsoftc.ccb_scanq, &xsoftc.xpt_topo_lock, PRIBIO,
          "-", 0);
  if ((ccb = (union ccb *)TAILQ_FIRST(&xsoftc.ccb_scanq)) != ((void*)0)) {
   TAILQ_REMOVE(&xsoftc.ccb_scanq, &ccb->ccb_h, sim_links.tqe);
   xpt_unlock_buses();






   xpt_copy_path(&path, ccb->ccb_h.path);
   xpt_path_lock(&path);
   xpt_action(ccb);
   xpt_path_unlock(&path);
   xpt_release_path(&path);

   xpt_lock_buses();
  }
 }
}
