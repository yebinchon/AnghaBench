
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct cfheader {scalar_t__ file_index; scalar_t__ file_count; int major; int minor; struct cffolder* folder_array; int folder_count; struct cffile* file_array; } ;
struct cffolder {char* compname; } ;
struct TYPE_8__ {int s; } ;
struct cffile {int folder; int attr; scalar_t__ uncompressed_size; int mtime; TYPE_2__ pathname; } ;
struct cab {int found_header; int end_of_archive; int end_of_entry; int end_of_entry_cleanup; int init_default_conversion; scalar_t__ entry_bytes_remaining; int format_name; struct cffolder* entry_cffolder; scalar_t__ entry_offset; struct archive_string_conv* sconv_default; struct archive_string_conv* sconv; struct archive_string_conv* sconv_utf8; int * entry_cfdata; struct cffile* entry_cffile; scalar_t__ entry_unconsumed; scalar_t__ entry_uncompressed_bytes_read; scalar_t__ entry_compressed_bytes_read; struct cfheader cfheader; } ;
struct archive_string_conv {int dummy; } ;
struct TYPE_9__ {int archive_format_name; } ;
struct archive_read {TYPE_4__ archive; TYPE_1__* format; } ;
struct archive_entry {int dummy; } ;
struct TYPE_7__ {scalar_t__ data; } ;


 int AE_IFREG ;
 int ARCHIVE_EOF ;
 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int ATTR_NAME_IS_UTF ;
 int ATTR_RDONLY ;
 scalar_t__ ENOMEM ;
 scalar_t__ archive_entry_copy_pathname_l (struct archive_entry*,int ,int ,struct archive_string_conv*) ;
 int archive_entry_set_mode (struct archive_entry*,int) ;
 int archive_entry_set_mtime (struct archive_entry*,int ,int ) ;
 int archive_entry_set_size (struct archive_entry*,scalar_t__) ;
 int archive_set_error (TYPE_4__*,scalar_t__,char*,...) ;
 int archive_string_conversion_charset_name (struct archive_string_conv*) ;
 struct archive_string_conv* archive_string_conversion_from_charset (TYPE_4__*,char*,int) ;
 struct archive_string_conv* archive_string_default_conversion_for_read (TYPE_4__*) ;
 int archive_strlen (TYPE_2__*) ;
 int cab_convert_path_separator_1 (TYPE_2__*,int) ;
 int cab_convert_path_separator_2 (struct cab*,struct archive_entry*) ;
 int cab_read_header (struct archive_read*) ;
 scalar_t__ errno ;



 int sprintf (int ,char*,int,int,char*) ;

__attribute__((used)) static int
archive_read_format_cab_read_header(struct archive_read *a,
    struct archive_entry *entry)
{
 struct cab *cab;
 struct cfheader *hd;
 struct cffolder *prev_folder;
 struct cffile *file;
 struct archive_string_conv *sconv;
 int err = ARCHIVE_OK, r;

 cab = (struct cab *)(a->format->data);
 if (cab->found_header == 0) {
  err = cab_read_header(a);
  if (err < ARCHIVE_WARN)
   return (err);

  cab->found_header = 1;
 }
 hd = &cab->cfheader;

 if (hd->file_index >= hd->file_count) {
  cab->end_of_archive = 1;
  return (ARCHIVE_EOF);
 }
 file = &hd->file_array[hd->file_index++];

 cab->end_of_entry = 0;
 cab->end_of_entry_cleanup = 0;
 cab->entry_compressed_bytes_read = 0;
 cab->entry_uncompressed_bytes_read = 0;
 cab->entry_unconsumed = 0;
 cab->entry_cffile = file;




 prev_folder = cab->entry_cffolder;
 switch (file->folder) {
 case 130:
 case 129:
  cab->entry_cffolder = &hd->folder_array[0];
  break;
 case 128:
  cab->entry_cffolder = &hd->folder_array[hd->folder_count-1];
  break;
 default:
  cab->entry_cffolder = &hd->folder_array[file->folder];
  break;
 }


 if (prev_folder != cab->entry_cffolder)
  cab->entry_cfdata = ((void*)0);



 if (file->attr & ATTR_NAME_IS_UTF) {
  if (cab->sconv_utf8 == ((void*)0)) {
   cab->sconv_utf8 =
       archive_string_conversion_from_charset(
    &(a->archive), "UTF-8", 1);
   if (cab->sconv_utf8 == ((void*)0))
    return (ARCHIVE_FATAL);
  }
  sconv = cab->sconv_utf8;
 } else if (cab->sconv != ((void*)0)) {

  sconv = cab->sconv;
 } else {

  if (!cab->init_default_conversion) {
   cab->sconv_default =
       archive_string_default_conversion_for_read(
         &(a->archive));
   cab->init_default_conversion = 1;
  }
  sconv = cab->sconv_default;
 }




 r = cab_convert_path_separator_1(&(file->pathname), file->attr);
 if (archive_entry_copy_pathname_l(entry, file->pathname.s,
     archive_strlen(&(file->pathname)), sconv) != 0) {
  if (errno == ENOMEM) {
   archive_set_error(&a->archive, ENOMEM,
       "Can't allocate memory for Pathname");
   return (ARCHIVE_FATAL);
  }
  archive_set_error(&a->archive,
      ARCHIVE_ERRNO_FILE_FORMAT,
      "Pathname cannot be converted "
      "from %s to current locale.",
      archive_string_conversion_charset_name(sconv));
  err = ARCHIVE_WARN;
 }
 if (r < 0) {

  cab_convert_path_separator_2(cab, entry);
 }

 archive_entry_set_size(entry, file->uncompressed_size);
 if (file->attr & ATTR_RDONLY)
  archive_entry_set_mode(entry, AE_IFREG | 0555);
 else
  archive_entry_set_mode(entry, AE_IFREG | 0666);
 archive_entry_set_mtime(entry, file->mtime, 0);

 cab->entry_bytes_remaining = file->uncompressed_size;
 cab->entry_offset = 0;

 if (file->uncompressed_size == 0)
  cab->end_of_entry_cleanup = cab->end_of_entry = 1;


 sprintf(cab->format_name, "CAB %d.%d (%s)",
     hd->major, hd->minor, cab->entry_cffolder->compname);
 a->archive.archive_format_name = cab->format_name;

 return (err);
}
