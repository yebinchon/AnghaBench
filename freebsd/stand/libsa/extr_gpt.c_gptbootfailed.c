
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dsk {int dummy; } ;
struct TYPE_6__ {int ent_attr; } ;
struct TYPE_5__ {int ent_attr; } ;


 int GPT_ENT_ATTR_BOOTFAILED ;
 int GPT_ENT_ATTR_BOOTONCE ;
 size_t curent ;
 TYPE_4__* gpttable ;
 int gptupdate (char*,struct dsk*,int *,TYPE_1__*) ;
 int hdr_backup ;
 scalar_t__ hdr_backup_lba ;
 int hdr_primary ;
 scalar_t__ hdr_primary_lba ;
 TYPE_1__* table_backup ;
 TYPE_1__* table_primary ;

void
gptbootfailed(struct dsk *dskp)
{

 if (!(gpttable[curent].ent_attr & GPT_ENT_ATTR_BOOTONCE))
  return;

 if (hdr_primary_lba > 0) {
  table_primary[curent].ent_attr &= ~GPT_ENT_ATTR_BOOTONCE;
  table_primary[curent].ent_attr |= GPT_ENT_ATTR_BOOTFAILED;
  gptupdate("primary", dskp, &hdr_primary, table_primary);
 }
 if (hdr_backup_lba > 0) {
  table_backup[curent].ent_attr &= ~GPT_ENT_ATTR_BOOTONCE;
  table_backup[curent].ent_attr |= GPT_ENT_ATTR_BOOTFAILED;
  gptupdate("backup", dskp, &hdr_backup, table_backup);
 }
}
