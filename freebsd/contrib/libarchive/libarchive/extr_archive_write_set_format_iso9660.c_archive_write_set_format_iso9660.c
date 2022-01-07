
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_18__ {scalar_t__* s; } ;
struct TYPE_14__ {TYPE_6__* rootent; int * pathtbl; int vdd_type; scalar_t__ max_depth; } ;
struct TYPE_13__ {int zisofs; int volume_id; int rr; int publisher; int pad; int limit_dirs; int limit_depth; int joliet; int iso_level; int copyright_file; int compression_level; int boot_type; int boot_load_size; int boot_load_seg; int boot_info_table; int boot_catalog; int boot; int biblio_file; int allow_vernum; int application_id; int abstract_file; } ;
struct TYPE_12__ {int compression_level; int stream; scalar_t__ stream_valid; scalar_t__ block_pointers_allocated; int * block_pointers; } ;
struct TYPE_16__ {int boot_load_size; scalar_t__ boot_load_seg; TYPE_7__ id; int platform_id; int * boot; TYPE_7__ boot_filename; TYPE_7__ catalog_filename; int * catalog; } ;
struct TYPE_15__ {int * pathtbl; int vdd_type; scalar_t__ max_depth; int * rootent; } ;
struct iso9660 {int temp_fd; int dircnt_max; int * sconv_from_utf16be; int * sconv_to_utf16be; TYPE_7__ cur_dirstr; TYPE_3__ primary; TYPE_6__* cur_dirent; TYPE_2__ opt; TYPE_1__ zisofs; TYPE_5__ el_torito; TYPE_7__ bibliographic_file_identifier; TYPE_7__ abstract_file_identifier; TYPE_7__ copyright_file_identifier; TYPE_7__ application_identifier; TYPE_7__ data_preparer_identifier; TYPE_7__ publisher_identifier; TYPE_7__ volume_identifier; TYPE_7__ mbs; TYPE_7__ utf16be; scalar_t__ wbuff_tail; scalar_t__ wbuff_written; scalar_t__ wbuff_offset; int wbuff_type; int wbuff_remaining; int * directories_too_deep; TYPE_4__ joliet; int * cur_file; scalar_t__ birth_time; } ;
struct TYPE_11__ {char* archive_format_name; int archive_format; } ;
struct archive_write {char* format_name; TYPE_10__ archive; int (* format_free ) (struct archive_write*) ;int format_close; int format_finish_entry; int format_write_data; int format_write_header; int format_options; struct iso9660* format_data; } ;
struct archive {int dummy; } ;
struct TYPE_17__ {struct TYPE_17__* parent; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_FORMAT_ISO9660 ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WRITE_MAGIC ;
 int BOOT_LOAD_SIZE ;
 int BOOT_PLATFORM_X86 ;
 int ENOMEM ;
 int OPT_ABSTRACT_FILE_DEFAULT ;
 int OPT_ALLOW_VERNUM_DEFAULT ;
 int OPT_APPLICATION_ID_DEFAULT ;
 int OPT_BIBLIO_FILE_DEFAULT ;
 int OPT_BOOT_CATALOG_DEFAULT ;
 int OPT_BOOT_DEFAULT ;
 int OPT_BOOT_INFO_TABLE_DEFAULT ;
 int OPT_BOOT_LOAD_SEG_DEFAULT ;
 int OPT_BOOT_LOAD_SIZE_DEFAULT ;
 int OPT_BOOT_TYPE_DEFAULT ;
 int OPT_COMPRESSION_LEVEL_DEFAULT ;
 int OPT_COPYRIGHT_FILE_DEFAULT ;
 int OPT_ISO_LEVEL_DEFAULT ;
 int OPT_JOLIET_DEFAULT ;
 int OPT_LIMIT_DEPTH_DEFAULT ;
 int OPT_LIMIT_DIRS_DEFAULT ;
 int OPT_PAD_DEFAULT ;
 int OPT_PUBLISHER_DEFAULT ;
 int OPT_RR_DEFAULT ;
 int OPT_VOLUME_ID_DEFAULT ;
 int OPT_ZISOFS_DEFAULT ;
 int VDD_JOLIET ;
 int VDD_PRIMARY ;
 int WB_TO_TEMP ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_set_error (TYPE_10__*,int ,char*) ;
 int archive_strcpy (TYPE_7__*,char*) ;
 int archive_string_ensure (TYPE_7__*,int) ;
 int archive_string_init (TYPE_7__*) ;
 char* archive_version_string () ;
 struct iso9660* calloc (int,int) ;
 int free (struct iso9660*) ;
 int iso9660_close ;
 int iso9660_finish_entry ;
 int iso9660_free (struct archive_write*) ;
 int iso9660_options ;
 int iso9660_write_data ;
 int iso9660_write_header ;
 TYPE_6__* isoent_create_virtual_dir (struct archive_write*,struct iso9660*,char*) ;
 int isofile_init_entry_data_file_list (struct iso9660*) ;
 int isofile_init_entry_list (struct iso9660*) ;
 int isofile_init_hardlinks (struct iso9660*) ;
 int memset (int *,int ,int) ;
 int stub1 (struct archive_write*) ;
 int wb_buffmax () ;

int
archive_write_set_format_iso9660(struct archive *_a)
{
 struct archive_write *a = (struct archive_write *)_a;
 struct iso9660 *iso9660;

 archive_check_magic(_a, ARCHIVE_WRITE_MAGIC,
     ARCHIVE_STATE_NEW, "archive_write_set_format_iso9660");


 if (a->format_free != ((void*)0))
  (a->format_free)(a);

 iso9660 = calloc(1, sizeof(*iso9660));
 if (iso9660 == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate iso9660 data");
  return (ARCHIVE_FATAL);
 }
 iso9660->birth_time = 0;
 iso9660->temp_fd = -1;
 iso9660->cur_file = ((void*)0);
 iso9660->primary.max_depth = 0;
 iso9660->primary.vdd_type = VDD_PRIMARY;
 iso9660->primary.pathtbl = ((void*)0);
 iso9660->joliet.rootent = ((void*)0);
 iso9660->joliet.max_depth = 0;
 iso9660->joliet.vdd_type = VDD_JOLIET;
 iso9660->joliet.pathtbl = ((void*)0);
 isofile_init_entry_list(iso9660);
 isofile_init_entry_data_file_list(iso9660);
 isofile_init_hardlinks(iso9660);
 iso9660->directories_too_deep = ((void*)0);
 iso9660->dircnt_max = 1;
 iso9660->wbuff_remaining = wb_buffmax();
 iso9660->wbuff_type = WB_TO_TEMP;
 iso9660->wbuff_offset = 0;
 iso9660->wbuff_written = 0;
 iso9660->wbuff_tail = 0;
 archive_string_init(&(iso9660->utf16be));
 archive_string_init(&(iso9660->mbs));




 archive_string_init(&(iso9660->volume_identifier));
 archive_strcpy(&(iso9660->volume_identifier), "CDROM");
 archive_string_init(&(iso9660->publisher_identifier));
 archive_string_init(&(iso9660->data_preparer_identifier));
 archive_string_init(&(iso9660->application_identifier));
 archive_strcpy(&(iso9660->application_identifier),
     archive_version_string());
 archive_string_init(&(iso9660->copyright_file_identifier));
 archive_string_init(&(iso9660->abstract_file_identifier));
 archive_string_init(&(iso9660->bibliographic_file_identifier));




 archive_string_init(&(iso9660->el_torito.catalog_filename));
 iso9660->el_torito.catalog = ((void*)0);

 archive_strcpy(&(iso9660->el_torito.catalog_filename),
     "boot.catalog");
 archive_string_init(&(iso9660->el_torito.boot_filename));
 iso9660->el_torito.boot = ((void*)0);
 iso9660->el_torito.platform_id = BOOT_PLATFORM_X86;
 archive_string_init(&(iso9660->el_torito.id));
 iso9660->el_torito.boot_load_seg = 0;
 iso9660->el_torito.boot_load_size = BOOT_LOAD_SIZE;
 iso9660->opt.abstract_file = OPT_ABSTRACT_FILE_DEFAULT;
 iso9660->opt.application_id = OPT_APPLICATION_ID_DEFAULT;
 iso9660->opt.allow_vernum = OPT_ALLOW_VERNUM_DEFAULT;
 iso9660->opt.biblio_file = OPT_BIBLIO_FILE_DEFAULT;
 iso9660->opt.boot = OPT_BOOT_DEFAULT;
 iso9660->opt.boot_catalog = OPT_BOOT_CATALOG_DEFAULT;
 iso9660->opt.boot_info_table = OPT_BOOT_INFO_TABLE_DEFAULT;
 iso9660->opt.boot_load_seg = OPT_BOOT_LOAD_SEG_DEFAULT;
 iso9660->opt.boot_load_size = OPT_BOOT_LOAD_SIZE_DEFAULT;
 iso9660->opt.boot_type = OPT_BOOT_TYPE_DEFAULT;
 iso9660->opt.compression_level = OPT_COMPRESSION_LEVEL_DEFAULT;
 iso9660->opt.copyright_file = OPT_COPYRIGHT_FILE_DEFAULT;
 iso9660->opt.iso_level = OPT_ISO_LEVEL_DEFAULT;
 iso9660->opt.joliet = OPT_JOLIET_DEFAULT;
 iso9660->opt.limit_depth = OPT_LIMIT_DEPTH_DEFAULT;
 iso9660->opt.limit_dirs = OPT_LIMIT_DIRS_DEFAULT;
 iso9660->opt.pad = OPT_PAD_DEFAULT;
 iso9660->opt.publisher = OPT_PUBLISHER_DEFAULT;
 iso9660->opt.rr = OPT_RR_DEFAULT;
 iso9660->opt.volume_id = OPT_VOLUME_ID_DEFAULT;
 iso9660->opt.zisofs = OPT_ZISOFS_DEFAULT;


 iso9660->primary.rootent =
     isoent_create_virtual_dir(a, iso9660, "");
 if (iso9660->primary.rootent == ((void*)0)) {
  free(iso9660);
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate memory");
  return (ARCHIVE_FATAL);
 }
 iso9660->primary.rootent->parent = iso9660->primary.rootent;
 iso9660->cur_dirent = iso9660->primary.rootent;
 archive_string_init(&(iso9660->cur_dirstr));
 archive_string_ensure(&(iso9660->cur_dirstr), 1);
 iso9660->cur_dirstr.s[0] = 0;
 iso9660->sconv_to_utf16be = ((void*)0);
 iso9660->sconv_from_utf16be = ((void*)0);

 a->format_data = iso9660;
 a->format_name = "iso9660";
 a->format_options = iso9660_options;
 a->format_write_header = iso9660_write_header;
 a->format_write_data = iso9660_write_data;
 a->format_finish_entry = iso9660_finish_entry;
 a->format_close = iso9660_close;
 a->format_free = iso9660_free;
 a->archive.archive_format = ARCHIVE_FORMAT_ISO9660;
 a->archive.archive_format_name = "ISO9660";

 return (ARCHIVE_OK);
}
