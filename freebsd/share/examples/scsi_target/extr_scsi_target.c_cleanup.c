
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct ccb_hdr {int dummy; } ;
struct TYPE_2__ {int tqe; } ;


 struct ccb_hdr* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct ccb_hdr*,int ) ;
 int TARGIOCDEBUG ;
 int TARGIOCDISABLE ;
 int close (int) ;
 scalar_t__ debug ;
 int free_ccb (union ccb*) ;
 int ioctl (int,int ,scalar_t__*) ;
 int kq_fd ;
 int pending_queue ;
 TYPE_1__ periph_links ;
 int targ_fd ;
 int warnx (char*) ;
 int work_queue ;

__attribute__((used)) static void
cleanup()
{
 struct ccb_hdr *ccb_h;

 if (debug) {
  warnx("cleanup called");
  debug = 0;
  ioctl(targ_fd, TARGIOCDEBUG, &debug);
 }
 ioctl(targ_fd, TARGIOCDISABLE, ((void*)0));
 close(targ_fd);

 while ((ccb_h = TAILQ_FIRST(&pending_queue)) != ((void*)0)) {
  TAILQ_REMOVE(&pending_queue, ccb_h, periph_links.tqe);
  free_ccb((union ccb *)ccb_h);
 }
 while ((ccb_h = TAILQ_FIRST(&work_queue)) != ((void*)0)) {
  TAILQ_REMOVE(&work_queue, ccb_h, periph_links.tqe);
  free_ccb((union ccb *)ccb_h);
 }

 if (kq_fd != -1)
  close(kq_fd);
}
