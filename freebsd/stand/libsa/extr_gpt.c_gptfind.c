
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uuid_t ;
struct gpt_ent {int ent_attr; int ent_lba_start; int ent_type; } ;
struct dsk {int part; int start; } ;
struct TYPE_6__ {int hdr_entries; } ;
struct TYPE_5__ {int ent_attr; } ;


 char* BOOTPROG ;
 int GPT_ENT_ATTR_BOOTME ;
 int GPT_ENT_ATTR_BOOTONCE ;
 scalar_t__ bcmp (int *,int const*,int) ;
 scalar_t__ bootonce ;
 int curent ;
 TYPE_4__* gpthdr ;
 struct gpt_ent* gpttable ;
 int gptupdate (char*,struct dsk*,int *,TYPE_1__*) ;
 int hdr_backup ;
 scalar_t__ hdr_backup_lba ;
 int hdr_primary ;
 scalar_t__ hdr_primary_lba ;
 int printf (char*,char*) ;
 TYPE_1__* table_backup ;
 TYPE_1__* table_primary ;

int
gptfind(const uuid_t *uuid, struct dsk *dskp, int part)
{
 struct gpt_ent *ent;
 int firsttry;

 if (part >= 0) {
  if (part == 0 || part > gpthdr->hdr_entries) {
   printf("%s: invalid partition index\n", BOOTPROG);
   return (-1);
  }
  ent = &gpttable[part - 1];
  if (bcmp(&ent->ent_type, uuid, sizeof(uuid_t)) != 0) {
   printf("%s: specified partition is not UFS\n",
       BOOTPROG);
   return (-1);
  }
  curent = part - 1;
  goto found;
 }

 firsttry = (curent == -1);
 curent++;
 if (curent >= gpthdr->hdr_entries) {
  curent = gpthdr->hdr_entries;
  return (-1);
 }
 if (bootonce) {




  for (; curent < gpthdr->hdr_entries; curent++) {
   ent = &gpttable[curent];
   if (bcmp(&ent->ent_type, uuid, sizeof(uuid_t)) != 0)
    continue;
   if (!(ent->ent_attr & GPT_ENT_ATTR_BOOTME))
    continue;
   if (!(ent->ent_attr & GPT_ENT_ATTR_BOOTONCE))
    continue;

   goto found;
  }
  bootonce = 0;
  curent = 0;
 }
 for (; curent < gpthdr->hdr_entries; curent++) {
  ent = &gpttable[curent];
  if (bcmp(&ent->ent_type, uuid, sizeof(uuid_t)) != 0)
   continue;
  if (!(ent->ent_attr & GPT_ENT_ATTR_BOOTME))
   continue;
  if (ent->ent_attr & GPT_ENT_ATTR_BOOTONCE)
   continue;

  goto found;
 }
 if (firsttry) {




  for (curent = 0; curent < gpthdr->hdr_entries; curent++) {
   ent = &gpttable[curent];
   if (bcmp(&ent->ent_type, uuid, sizeof(uuid_t)) != 0)
    continue;

   goto found;
  }
 }
 return (-1);
found:
 dskp->part = curent + 1;
 ent = &gpttable[curent];
 dskp->start = ent->ent_lba_start;
 if (ent->ent_attr & GPT_ENT_ATTR_BOOTONCE) {




  if (hdr_primary_lba > 0) {
   table_primary[curent].ent_attr &= ~GPT_ENT_ATTR_BOOTME;
   gptupdate("primary", dskp, &hdr_primary, table_primary);
  }
  if (hdr_backup_lba > 0) {
   table_backup[curent].ent_attr &= ~GPT_ENT_ATTR_BOOTME;
   gptupdate("backup", dskp, &hdr_backup, table_backup);
  }
 }
 return (0);
}
