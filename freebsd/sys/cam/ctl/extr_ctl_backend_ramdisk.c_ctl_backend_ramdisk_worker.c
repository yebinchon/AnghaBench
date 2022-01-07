
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ctl_io {int io_hdr; } ;
struct ctl_be_ramdisk_lun {int queue_lock; int cont_queue; } ;
struct TYPE_2__ {int flags; } ;


 TYPE_1__* ARGS (union ctl_io*) ;
 int CTL_LLF_COMPARE ;
 scalar_t__ STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE (int *,int *,int ,int ) ;
 int ctl_backend_ramdisk_compare (union ctl_io*) ;
 int ctl_backend_ramdisk_rw (union ctl_io*) ;
 int ctl_io_hdr ;
 int links ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
ctl_backend_ramdisk_worker(void *context, int pending)
{
 struct ctl_be_ramdisk_lun *be_lun;
 union ctl_io *io;

 be_lun = (struct ctl_be_ramdisk_lun *)context;
 mtx_lock(&be_lun->queue_lock);
 for (;;) {
  io = (union ctl_io *)STAILQ_FIRST(&be_lun->cont_queue);
  if (io != ((void*)0)) {
   STAILQ_REMOVE(&be_lun->cont_queue, &io->io_hdr,
          ctl_io_hdr, links);
   mtx_unlock(&be_lun->queue_lock);
   if (ARGS(io)->flags & CTL_LLF_COMPARE)
    ctl_backend_ramdisk_compare(io);
   else
    ctl_backend_ramdisk_rw(io);
   mtx_lock(&be_lun->queue_lock);
   continue;
  }





  break;
 }
 mtx_unlock(&be_lun->queue_lock);
}
