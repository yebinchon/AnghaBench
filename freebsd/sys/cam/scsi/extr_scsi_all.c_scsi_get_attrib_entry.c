
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_attrib_table_entry {int dummy; } ;


 int nitems (int ) ;
 struct scsi_attrib_table_entry* scsi_find_attrib_entry (int ,int ,int ) ;
 int scsi_mam_attr_table ;

struct scsi_attrib_table_entry *
scsi_get_attrib_entry(uint32_t id)
{
 return (scsi_find_attrib_entry(scsi_mam_attr_table,
     nitems(scsi_mam_attr_table), id));
}
