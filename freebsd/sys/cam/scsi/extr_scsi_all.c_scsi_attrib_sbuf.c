
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_mam_attribute_header {int id; } ;
struct scsi_attrib_table_entry {int (* to_str ) (struct sbuf*,struct scsi_mam_attribute_header*,int,int ,int,char*,int) ;int * suffix; int flags; int * desc; } ;
struct sbuf {int dummy; } ;


 size_t nitems (struct scsi_attrib_table_entry*) ;
 int sbuf_printf (struct sbuf*,char*,...) ;
 int sbuf_trim (struct sbuf*) ;
 int scsi_2btoul (int ) ;
 int scsi_attrib_prefix_sbuf (struct sbuf*,int,struct scsi_mam_attribute_header*,int,int *) ;
 int scsi_attrib_value_sbuf (struct sbuf*,int,struct scsi_mam_attribute_header*,int,char*,int) ;
 struct scsi_attrib_table_entry* scsi_find_attrib_entry (struct scsi_attrib_table_entry*,size_t,int) ;
 struct scsi_attrib_table_entry* scsi_mam_attr_table ;
 int stub1 (struct sbuf*,struct scsi_mam_attribute_header*,int,int ,int,char*,int) ;
 int stub2 (struct sbuf*,struct scsi_mam_attribute_header*,int,int ,int,char*,int) ;

int
scsi_attrib_sbuf(struct sbuf *sb, struct scsi_mam_attribute_header *hdr,
   uint32_t valid_len, struct scsi_attrib_table_entry *user_table,
   size_t num_user_entries, int prefer_user_table,
   uint32_t output_flags, char *error_str, int error_str_len)
{
 int retval;
 struct scsi_attrib_table_entry *table1 = ((void*)0), *table2 = ((void*)0);
 struct scsi_attrib_table_entry *entry = ((void*)0);
 size_t table1_size = 0, table2_size = 0;
 uint32_t id;

 retval = 0;

 if (valid_len < sizeof(*hdr)) {
  retval = 1;
  goto bailout;
 }

 id = scsi_2btoul(hdr->id);

 if (user_table != ((void*)0)) {
  if (prefer_user_table != 0) {
   table1 = user_table;
   table1_size = num_user_entries;
   table2 = scsi_mam_attr_table;
   table2_size = nitems(scsi_mam_attr_table);
  } else {
   table1 = scsi_mam_attr_table;
   table1_size = nitems(scsi_mam_attr_table);
   table2 = user_table;
   table2_size = num_user_entries;
  }
 } else {
  table1 = scsi_mam_attr_table;
  table1_size = nitems(scsi_mam_attr_table);
 }

 entry = scsi_find_attrib_entry(table1, table1_size, id);
 if (entry != ((void*)0)) {
  scsi_attrib_prefix_sbuf(sb, output_flags, hdr, valid_len,
     entry->desc);
  if (entry->to_str == ((void*)0))
   goto print_default;
  retval = entry->to_str(sb, hdr, valid_len, entry->flags,
           output_flags, error_str, error_str_len);
  goto bailout;
 }
 if (table2 != ((void*)0)) {
  entry = scsi_find_attrib_entry(table2, table2_size, id);
  if (entry != ((void*)0)) {
   if (entry->to_str == ((void*)0))
    goto print_default;

   scsi_attrib_prefix_sbuf(sb, output_flags, hdr,
      valid_len, entry->desc);
   retval = entry->to_str(sb, hdr, valid_len, entry->flags,
            output_flags, error_str,
            error_str_len);
   goto bailout;
  }
 }

 scsi_attrib_prefix_sbuf(sb, output_flags, hdr, valid_len, ((void*)0));

print_default:
 retval = scsi_attrib_value_sbuf(sb, valid_len, hdr, output_flags,
     error_str, error_str_len);
bailout:
 if (retval == 0) {
   if ((entry != ((void*)0))
   && (entry->suffix != ((void*)0)))
   sbuf_printf(sb, " %s", entry->suffix);

  sbuf_trim(sb);
  sbuf_printf(sb, "\n");
 }

 return (retval);
}
