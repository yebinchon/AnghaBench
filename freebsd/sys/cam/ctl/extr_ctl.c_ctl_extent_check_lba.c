
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int ctl_action ;


 int CTL_ACTION_BLOCK ;
 int CTL_ACTION_PASS ;

__attribute__((used)) static ctl_action
ctl_extent_check_lba(uint64_t lba1, uint64_t len1, uint64_t lba2, uint64_t len2,
    bool seq)
{
 uint64_t endlba1, endlba2;

 endlba1 = lba1 + len1 - (seq ? 0 : 1);
 endlba2 = lba2 + len2 - 1;

 if ((endlba1 < lba2) || (endlba2 < lba1))
  return (CTL_ACTION_PASS);
 else
  return (CTL_ACTION_BLOCK);
}
