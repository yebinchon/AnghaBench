
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int iso_level; scalar_t__ pad; scalar_t__ rr; scalar_t__ joliet; scalar_t__ boot; scalar_t__ boot_info_table; } ;
struct TYPE_11__ {int location_type_L_path_table; int location_type_M_path_table; int vdd_type; scalar_t__ total_dir_block; scalar_t__ path_table_block; int rootent; } ;
struct iso9660 {scalar_t__ birth_time; int location_rrip_er; int volume_space_size; int volume_sequence_number; TYPE_2__* directories_too_deep; TYPE_3__ opt; TYPE_4__ joliet; TYPE_4__ primary; scalar_t__ wbuff_tail; scalar_t__ wbuff_written; scalar_t__ wbuff_offset; int wbuff_type; int wbuff_remaining; scalar_t__ total_file_block; int * sconv_from_utf16be; int * sconv_to_utf16be; } ;
struct archive_write {int archive; struct iso9660* format_data; } ;
struct TYPE_9__ {TYPE_1__* file; } ;
struct TYPE_8__ {int entry; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 scalar_t__ BOOT_RECORD_DESCRIPTOR_BLOCK ;
 int LOGICAL_BLOCK_SIZE ;
 int NON_ISO_FILE_SYSTEM_INFORMATION_BLOCK ;
 int PADDING_BLOCK ;
 int PRIMARY_VOLUME_DESCRIPTOR_BLOCK ;
 scalar_t__ RRIP_ER_BLOCK ;
 scalar_t__ SUPPLEMENTARY_VOLUME_DESCRIPTOR_BLOCK ;
 int SYSTEM_AREA_BLOCK ;
 int VDD_ENHANCED ;
 int VDD_PRIMARY ;
 int VOLUME_DESCRIPTOR_SET_TERMINATOR_BLOCK ;
 int WB_TO_STREAM ;
 int archive_entry_pathname (int ) ;
 int archive_set_error (int *,int ,char*,int ) ;
 int * archive_string_conversion_from_charset (int *,char*,int) ;
 int * archive_string_conversion_to_charset (int *,char*,int) ;
 int isoent_clone_tree (struct archive_write*,int *,int ) ;
 int isoent_create_boot_catalog (struct archive_write*,int ) ;
 int isoent_find_out_boot_file (struct archive_write*,int ) ;
 int isoent_make_path_table (struct archive_write*) ;
 int isoent_setup_directory_location (struct iso9660*,int,TYPE_4__*) ;
 int isoent_setup_file_location (struct iso9660*,int) ;
 int setup_boot_information (struct archive_write*) ;
 int time (scalar_t__*) ;
 int wb_buffmax () ;
 scalar_t__ wb_remaining (struct archive_write*) ;
 int wb_write_out (struct archive_write*) ;
 int write_VD (struct archive_write*,TYPE_4__*) ;
 int write_VD_boot_record (struct archive_write*) ;
 int write_VD_terminator (struct archive_write*) ;
 int write_directory_descriptors (struct archive_write*,TYPE_4__*) ;
 int write_file_descriptors (struct archive_write*) ;
 int write_information_block (struct archive_write*) ;
 int write_null (struct archive_write*,int) ;
 int write_path_table (struct archive_write*,int,TYPE_4__*) ;
 int write_rr_ER (struct archive_write*) ;
 int zisofs_rewind_boot_file (struct archive_write*) ;

__attribute__((used)) static int
iso9660_close(struct archive_write *a)
{
 struct iso9660 *iso9660;
 int ret, blocks;

 iso9660 = a->format_data;




 if (wb_remaining(a) > 0) {
  ret = wb_write_out(a);
  if (ret < 0)
   return (ret);
 }







  time(&(iso9660->birth_time));




 if (iso9660->opt.boot) {

  ret = isoent_find_out_boot_file(a, iso9660->primary.rootent);
  if (ret < 0)
   return (ret);


  ret = zisofs_rewind_boot_file(a);
  if (ret < 0)
   return (ret);

  if (wb_remaining(a) > 0) {
   ret = wb_write_out(a);
   if (ret < 0)
    return (ret);
  }

  ret = isoent_create_boot_catalog(a, iso9660->primary.rootent);
  if (ret < 0)
   return (ret);
 }




 if (iso9660->opt.joliet) {

  ret = isoent_clone_tree(a, &(iso9660->joliet.rootent),
      iso9660->primary.rootent);
  if (ret < 0)
   return (ret);



  if (iso9660->sconv_to_utf16be == ((void*)0)) {
   iso9660->sconv_to_utf16be =
       archive_string_conversion_to_charset(
    &(a->archive), "UTF-16BE", 1);
   if (iso9660->sconv_to_utf16be == ((void*)0))

    return (ARCHIVE_FATAL);
   iso9660->sconv_from_utf16be =
       archive_string_conversion_from_charset(
    &(a->archive), "UTF-16BE", 1);
   if (iso9660->sconv_from_utf16be == ((void*)0))

    return (ARCHIVE_FATAL);
  }
 }




 ret = isoent_make_path_table(a);
 if (ret < 0)
  return (ret);





 blocks = SYSTEM_AREA_BLOCK
  + PRIMARY_VOLUME_DESCRIPTOR_BLOCK
  + VOLUME_DESCRIPTOR_SET_TERMINATOR_BLOCK
  + NON_ISO_FILE_SYSTEM_INFORMATION_BLOCK;
 if (iso9660->opt.boot)
  blocks += BOOT_RECORD_DESCRIPTOR_BLOCK;
 if (iso9660->opt.joliet)
  blocks += SUPPLEMENTARY_VOLUME_DESCRIPTOR_BLOCK;
 if (iso9660->opt.iso_level == 4)
  blocks += SUPPLEMENTARY_VOLUME_DESCRIPTOR_BLOCK;


 iso9660->primary.location_type_L_path_table = blocks;
 blocks += iso9660->primary.path_table_block;
 iso9660->primary.location_type_M_path_table = blocks;
 blocks += iso9660->primary.path_table_block;
 if (iso9660->opt.joliet) {
  iso9660->joliet.location_type_L_path_table = blocks;
  blocks += iso9660->joliet.path_table_block;
  iso9660->joliet.location_type_M_path_table = blocks;
  blocks += iso9660->joliet.path_table_block;
 }


 isoent_setup_directory_location(iso9660, blocks,
     &(iso9660->primary));
 blocks += iso9660->primary.total_dir_block;
 if (iso9660->opt.joliet) {
  isoent_setup_directory_location(iso9660, blocks,
      &(iso9660->joliet));
  blocks += iso9660->joliet.total_dir_block;
 }

 if (iso9660->opt.rr) {
  iso9660->location_rrip_er = blocks;
  blocks += RRIP_ER_BLOCK;
 }


  isoent_setup_file_location(iso9660, blocks);
 blocks += iso9660->total_file_block;
 if (iso9660->opt.boot && iso9660->opt.boot_info_table) {
  ret = setup_boot_information(a);
  if (ret < 0)
   return (ret);
 }


 iso9660->volume_space_size = blocks;
 if (iso9660->opt.pad)
  iso9660->volume_space_size += PADDING_BLOCK;
 iso9660->volume_sequence_number = 1;







 iso9660->wbuff_remaining = wb_buffmax();
 iso9660->wbuff_type = WB_TO_STREAM;
 iso9660->wbuff_offset = 0;
 iso9660->wbuff_written = 0;
 iso9660->wbuff_tail = 0;


 ret = write_null(a, SYSTEM_AREA_BLOCK * LOGICAL_BLOCK_SIZE);
 if (ret != ARCHIVE_OK)
  return (ARCHIVE_FATAL);


 ret = write_VD(a, &(iso9660->primary));
 if (ret != ARCHIVE_OK)
  return (ARCHIVE_FATAL);

 if (iso9660->opt.boot) {

  ret = write_VD_boot_record(a);
  if (ret != ARCHIVE_OK)
   return (ARCHIVE_FATAL);
 }

 if (iso9660->opt.iso_level == 4) {

  iso9660->primary.vdd_type = VDD_ENHANCED;
  ret = write_VD(a, &(iso9660->primary));
  iso9660->primary.vdd_type = VDD_PRIMARY;
  if (ret != ARCHIVE_OK)
   return (ARCHIVE_FATAL);
 }

 if (iso9660->opt.joliet) {
  ret = write_VD(a, &(iso9660->joliet));
  if (ret != ARCHIVE_OK)
   return (ARCHIVE_FATAL);
 }


 ret = write_VD_terminator(a);
 if (ret != ARCHIVE_OK)
  return (ARCHIVE_FATAL);


 ret = write_information_block(a);
 if (ret != ARCHIVE_OK)
  return (ARCHIVE_FATAL);


 ret = write_path_table(a, 0, &(iso9660->primary));
 if (ret != ARCHIVE_OK)
  return (ARCHIVE_FATAL);


 ret = write_path_table(a, 1, &(iso9660->primary));
 if (ret != ARCHIVE_OK)
  return (ARCHIVE_FATAL);

 if (iso9660->opt.joliet) {

  ret = write_path_table(a, 0, &(iso9660->joliet));
  if (ret != ARCHIVE_OK)
   return (ARCHIVE_FATAL);


  ret = write_path_table(a, 1, &(iso9660->joliet));
  if (ret != ARCHIVE_OK)
   return (ARCHIVE_FATAL);
 }


 ret = write_directory_descriptors(a, &(iso9660->primary));
 if (ret != ARCHIVE_OK)
  return (ARCHIVE_FATAL);

 if (iso9660->opt.joliet) {
  ret = write_directory_descriptors(a, &(iso9660->joliet));
  if (ret != ARCHIVE_OK)
   return (ARCHIVE_FATAL);
 }

 if (iso9660->opt.rr) {

  ret = write_rr_ER(a);
  if (ret != ARCHIVE_OK)
   return (ARCHIVE_FATAL);
 }


 ret = write_file_descriptors(a);
 if (ret != ARCHIVE_OK)
  return (ARCHIVE_FATAL);


 if (iso9660->opt.pad) {
  ret = write_null(a, PADDING_BLOCK * LOGICAL_BLOCK_SIZE);
  if (ret != ARCHIVE_OK)
   return (ARCHIVE_FATAL);
 }

 if (iso9660->directories_too_deep != ((void*)0)) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "%s: Directories too deep.",
      archive_entry_pathname(
   iso9660->directories_too_deep->file->entry));
  return (ARCHIVE_WARN);
 }


 ret = wb_write_out(a);

 return (ret);
}
