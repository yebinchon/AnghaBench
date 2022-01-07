
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_scsiio {size_t* cdb; } ;
struct ctl_cmd_entry {int flags; scalar_t__ execute; } ;


 int CTL_CMD_FLAG_SA5 ;
 int SERVICE_ACTION_MASK ;
 struct ctl_cmd_entry* ctl_cmd_table ;

const struct ctl_cmd_entry *
ctl_get_cmd_entry(struct ctl_scsiio *ctsio, int *sa)
{
 const struct ctl_cmd_entry *entry;
 int service_action;

 entry = &ctl_cmd_table[ctsio->cdb[0]];
 if (sa)
  *sa = ((entry->flags & CTL_CMD_FLAG_SA5) != 0);
 if (entry->flags & CTL_CMD_FLAG_SA5) {
  service_action = ctsio->cdb[1] & SERVICE_ACTION_MASK;
  entry = &((const struct ctl_cmd_entry *)
      entry->execute)[service_action];
 }
 return (entry);
}
