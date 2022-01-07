
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct scsi_attrib_table_entry {size_t id; } ;



struct scsi_attrib_table_entry *
scsi_find_attrib_entry(struct scsi_attrib_table_entry *table,
         size_t num_table_entries, uint32_t id)
{
 uint32_t i;

 for (i = 0; i < num_table_entries; i++) {
  if (table[i].id == id)
   return (&table[i]);
 }

 return (((void*)0));
}
