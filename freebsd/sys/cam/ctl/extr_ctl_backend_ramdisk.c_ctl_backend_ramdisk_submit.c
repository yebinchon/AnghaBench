
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ctl_io {int scsiio; } ;
struct ctl_lba_len_flags {int flags; } ;
struct TYPE_2__ {scalar_t__ len; } ;


 struct ctl_lba_len_flags* ARGS (union ctl_io*) ;
 int CTL_LLF_COMPARE ;
 int CTL_LLF_VERIFY ;
 int CTL_RETVAL_COMPLETE ;
 TYPE_1__* PRIV (union ctl_io*) ;
 int ctl_backend_ramdisk_compare (union ctl_io*) ;
 int ctl_backend_ramdisk_rw (union ctl_io*) ;
 int ctl_data_submit_done (union ctl_io*) ;
 int ctl_set_success (int *) ;

__attribute__((used)) static int
ctl_backend_ramdisk_submit(union ctl_io *io)
{
 struct ctl_lba_len_flags *lbalen = ARGS(io);

 if (lbalen->flags & CTL_LLF_VERIFY) {
  ctl_set_success(&io->scsiio);
  ctl_data_submit_done(io);
  return (CTL_RETVAL_COMPLETE);
 }
 PRIV(io)->len = 0;
 if (lbalen->flags & CTL_LLF_COMPARE)
  ctl_backend_ramdisk_compare(io);
 else
  ctl_backend_ramdisk_rw(io);
 return (CTL_RETVAL_COMPLETE);
}
