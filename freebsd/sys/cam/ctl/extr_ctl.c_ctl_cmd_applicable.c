
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ctl_cmd_entry {int flags; } ;


 int CTL_CMD_FLAG_OK_ON_CDROM ;
 int CTL_CMD_FLAG_OK_ON_DIRECT ;
 int CTL_CMD_FLAG_OK_ON_PROC ;




__attribute__((used)) static int
ctl_cmd_applicable(uint8_t lun_type, const struct ctl_cmd_entry *entry)
{

 switch (lun_type) {
 case 129:
  if ((entry->flags & CTL_CMD_FLAG_OK_ON_DIRECT) == 0)
   return (0);
  break;
 case 128:
  if ((entry->flags & CTL_CMD_FLAG_OK_ON_PROC) == 0)
   return (0);
  break;
 case 130:
  if ((entry->flags & CTL_CMD_FLAG_OK_ON_CDROM) == 0)
   return (0);
  break;
 default:
  return (0);
 }
 return (1);
}
