
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
union ctl_io {TYPE_1__ io_hdr; } ;
typedef scalar_t__ uint64_t ;
typedef int ctl_action ;


 int CTL_ACTION_BLOCK ;
 int CTL_ACTION_ERROR ;
 int CTL_ACTION_PASS ;
 int CTL_FLAG_SERSEQ_DONE ;
 scalar_t__ ctl_get_lba_len (union ctl_io*,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static ctl_action
ctl_extent_check_seq(union ctl_io *io1, union ctl_io *io2)
{
 uint64_t lba1, lba2;
 uint64_t len1, len2;

 if (io1->io_hdr.flags & CTL_FLAG_SERSEQ_DONE)
  return (CTL_ACTION_PASS);
 if (ctl_get_lba_len(io1, &lba1, &len1) != 0)
  return (CTL_ACTION_ERROR);
 if (ctl_get_lba_len(io2, &lba2, &len2) != 0)
  return (CTL_ACTION_ERROR);

 if (lba1 + len1 == lba2)
  return (CTL_ACTION_BLOCK);
 return (CTL_ACTION_PASS);
}
