
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct scsi_nv {scalar_t__ value; char const* name; } ;



const char *
scsi_nv_to_str(struct scsi_nv *table, int num_table_entries, uint64_t value)
{
 int i;

 for (i = 0; i < num_table_entries; i++) {
  if (table[i].value == value)
   return (table[i].name);
 }

 return (((void*)0));
}
