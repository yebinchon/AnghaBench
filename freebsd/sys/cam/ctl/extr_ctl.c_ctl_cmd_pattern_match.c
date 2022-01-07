
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ctl_io {int dummy; } ctl_io ;
typedef int uint64_t ;
struct ctl_scsiio {int dummy; } ;
struct TYPE_2__ {int len; int lba; } ;
struct ctl_error_desc {int error_pattern; TYPE_1__ lba_range; } ;
struct ctl_cmd_entry {int pattern; } ;
typedef int ctl_lun_error_pattern ;
typedef scalar_t__ ctl_action ;


 scalar_t__ CTL_ACTION_PASS ;
 int CTL_LUN_PAT_ANY ;
 int CTL_LUN_PAT_CMD ;
 int CTL_LUN_PAT_MASK ;
 int CTL_LUN_PAT_NONE ;
 int CTL_LUN_PAT_RANGE ;
 int FALSE ;
 scalar_t__ ctl_extent_check_lba (int ,int ,int ,int ,int ) ;
 struct ctl_cmd_entry* ctl_get_cmd_entry (struct ctl_scsiio*,int *) ;
 int ctl_get_lba_len (union ctl_io*,int *,int *) ;

__attribute__((used)) static ctl_lun_error_pattern
ctl_cmd_pattern_match(struct ctl_scsiio *ctsio, struct ctl_error_desc *desc)
{
 const struct ctl_cmd_entry *entry;
 ctl_lun_error_pattern filtered_pattern, pattern;

 pattern = desc->error_pattern;






 if (pattern & CTL_LUN_PAT_CMD)
  return (CTL_LUN_PAT_CMD);

 if ((pattern & CTL_LUN_PAT_MASK) == CTL_LUN_PAT_ANY)
  return (CTL_LUN_PAT_ANY);

 entry = ctl_get_cmd_entry(ctsio, ((void*)0));

 filtered_pattern = entry->pattern & pattern;
 if ((filtered_pattern & ~CTL_LUN_PAT_MASK) !=
      (pattern & ~CTL_LUN_PAT_MASK))
  return (CTL_LUN_PAT_NONE);





 if (filtered_pattern & CTL_LUN_PAT_RANGE) {
  uint64_t lba1;
  uint64_t len1;
  ctl_action action;
  int retval;

  retval = ctl_get_lba_len((union ctl_io *)ctsio, &lba1, &len1);
  if (retval != 0)
   return (CTL_LUN_PAT_NONE);

  action = ctl_extent_check_lba(lba1, len1, desc->lba_range.lba,
           desc->lba_range.len, FALSE);




  if (action == CTL_ACTION_PASS)
   return (CTL_LUN_PAT_NONE);
 }

 return (filtered_pattern);
}
