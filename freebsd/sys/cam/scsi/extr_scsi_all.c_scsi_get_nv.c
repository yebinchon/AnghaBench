
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_nv {char* name; } ;
typedef int scsi_nv_status ;
typedef int scsi_nv_flags ;


 int SCSI_NV_AMBIGUOUS ;
 int SCSI_NV_FLAG_IG_CASE ;
 int SCSI_NV_FOUND ;
 int SCSI_NV_NOT_FOUND ;
 size_t strlen (char*) ;
 scalar_t__ strncasecmp (char*,char*,size_t) ;
 scalar_t__ strncmp (char*,char*,size_t) ;

scsi_nv_status
scsi_get_nv(struct scsi_nv *table, int num_table_entries,
     char *name, int *table_entry, scsi_nv_flags flags)
{
 int i, num_matches = 0;

 for (i = 0; i < num_table_entries; i++) {
  size_t table_len, name_len;

  table_len = strlen(table[i].name);
  name_len = strlen(name);

  if ((((flags & SCSI_NV_FLAG_IG_CASE) != 0)
    && (strncasecmp(table[i].name, name, name_len) == 0))
  || (((flags & SCSI_NV_FLAG_IG_CASE) == 0)
   && (strncmp(table[i].name, name, name_len) == 0))) {
   *table_entry = i;







   if (table_len == name_len)
    return (SCSI_NV_FOUND);





   num_matches++;
  }
 }

 if (num_matches > 1)
  return (SCSI_NV_AMBIGUOUS);
 else if (num_matches == 1)
  return (SCSI_NV_FOUND);
 else
  return (SCSI_NV_NOT_FOUND);
}
