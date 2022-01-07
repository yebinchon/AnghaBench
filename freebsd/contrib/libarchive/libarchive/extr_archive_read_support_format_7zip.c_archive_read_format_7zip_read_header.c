
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint64_t ;
typedef size_t uint32_t ;
struct TYPE_13__ {char* archive_format_name; int archive_format; } ;
struct archive_read {TYPE_6__ archive; TYPE_1__* format; } ;
struct archive_entry {int dummy; } ;
struct _7zip_entry {size_t folderIndex; int mode; int flg; size_t ssIndex; int atime_ns; int atime; int ctime_ns; int ctime; int mtime_ns; int mtime; int name_len; scalar_t__ utf16name; } ;
struct TYPE_11__ {int* unpackSizes; } ;
struct TYPE_9__ {size_t numFolders; struct _7z_folder* folders; } ;
struct TYPE_12__ {TYPE_4__ ss; TYPE_2__ ci; } ;
struct _7zip {scalar_t__ has_encrypted_entries; size_t entries_remaining; int end_of_entry; int entry_bytes_remaining; char* format_name; TYPE_5__ si; int * sconv; int entry_crc32; scalar_t__ entry_offset; struct _7zip_entry* entry; struct _7zip_entry* entries; scalar_t__ numFiles; } ;
struct _7z_header_info {int dummy; } ;
struct _7z_folder {size_t numCoders; TYPE_3__* coders; } ;
typedef int int64_t ;
typedef int header ;
struct TYPE_10__ {int codec; } ;
struct TYPE_8__ {scalar_t__ data; } ;


 int AE_IFLNK ;
 int AE_IFMT ;
 int AE_IFREG ;
 int ARCHIVE_EOF ;
 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_FORMAT_7ZIP ;
 int ARCHIVE_OK ;
 scalar_t__ ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW ;
 int ARCHIVE_WARN ;
 int ATIME_IS_SET ;
 int CTIME_IS_SET ;
 scalar_t__ ENOMEM ;
 int MTIME_IS_SET ;



 scalar_t__ archive_entry_copy_pathname_l (struct archive_entry*,char const*,int ,int *) ;
 int archive_entry_copy_symlink (struct archive_entry*,char const*) ;
 int archive_entry_set_atime (struct archive_entry*,int ,int ) ;
 int archive_entry_set_ctime (struct archive_entry*,int ,int ) ;
 int archive_entry_set_is_data_encrypted (struct archive_entry*,int) ;
 int archive_entry_set_mode (struct archive_entry*,int) ;
 int archive_entry_set_mtime (struct archive_entry*,int ,int ) ;
 int archive_entry_set_size (struct archive_entry*,int) ;
 int archive_read_format_7zip_read_data (struct archive_read*,void const**,size_t*,int *) ;
 int archive_set_error (TYPE_6__*,scalar_t__,char*,...) ;
 int archive_string_conversion_charset_name (int *) ;
 int * archive_string_conversion_from_charset (TYPE_6__*,char*,int) ;
 int crc32 (int ,int *,int ) ;
 scalar_t__ errno ;
 int free (unsigned char*) ;
 int free_Header (struct _7z_header_info*) ;
 int memcpy (unsigned char*,void const*,size_t) ;
 int memset (struct _7z_header_info*,int ,int) ;
 unsigned char* realloc (unsigned char*,size_t) ;
 int slurp_central_directory (struct archive_read*,struct _7zip*,struct _7z_header_info*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static int
archive_read_format_7zip_read_header(struct archive_read *a,
 struct archive_entry *entry)
{
 struct _7zip *zip = (struct _7zip *)a->format->data;
 struct _7zip_entry *zip_entry;
 int r, ret = ARCHIVE_OK;
 struct _7z_folder *folder = 0;
 uint64_t fidx = 0;
 if (zip->has_encrypted_entries == ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW) {
  zip->has_encrypted_entries = 0;
 }

 a->archive.archive_format = ARCHIVE_FORMAT_7ZIP;
 if (a->archive.archive_format_name == ((void*)0))
  a->archive.archive_format_name = "7-Zip";

 if (zip->entries == ((void*)0)) {
  struct _7z_header_info header;

  memset(&header, 0, sizeof(header));
  r = slurp_central_directory(a, zip, &header);
  free_Header(&header);
  if (r != ARCHIVE_OK)
   return (r);
  zip->entries_remaining = (size_t)zip->numFiles;
  zip->entry = zip->entries;
 } else {
  ++zip->entry;
 }
 zip_entry = zip->entry;

 if (zip->entries_remaining <= 0 || zip_entry == ((void*)0))
  return ARCHIVE_EOF;
 --zip->entries_remaining;

 zip->entry_offset = 0;
 zip->end_of_entry = 0;
 zip->entry_crc32 = crc32(0, ((void*)0), 0);


 if (zip->sconv == ((void*)0)) {
  zip->sconv = archive_string_conversion_from_charset(
      &a->archive, "UTF-16LE", 1);
  if (zip->sconv == ((void*)0))
   return (ARCHIVE_FATAL);
 }





 if (zip_entry && zip_entry->folderIndex < zip->si.ci.numFolders) {
  folder = &(zip->si.ci.folders[zip_entry->folderIndex]);
  for (fidx=0; folder && fidx<folder->numCoders; fidx++) {
   switch(folder->coders[fidx].codec) {
    case 129:
    case 128:
    case 130: {
     archive_entry_set_is_data_encrypted(entry, 1);
     zip->has_encrypted_entries = 1;
     break;
    }
   }
  }
 }




 if (zip->has_encrypted_entries == ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW) {
  zip->has_encrypted_entries = 0;
 }

 if (archive_entry_copy_pathname_l(entry,
     (const char *)zip_entry->utf16name,
     zip_entry->name_len, zip->sconv) != 0) {
  if (errno == ENOMEM) {
   archive_set_error(&a->archive, ENOMEM,
       "Can't allocate memory for Pathname");
   return (ARCHIVE_FATAL);
  }
  archive_set_error(&a->archive,
      ARCHIVE_ERRNO_FILE_FORMAT,
      "Pathname cannot be converted "
      "from %s to current locale.",
      archive_string_conversion_charset_name(zip->sconv));
  ret = ARCHIVE_WARN;
 }


 archive_entry_set_mode(entry, zip_entry->mode);
 if (zip_entry->flg & MTIME_IS_SET)
  archive_entry_set_mtime(entry, zip_entry->mtime,
   zip_entry->mtime_ns);
 if (zip_entry->flg & CTIME_IS_SET)
  archive_entry_set_ctime(entry, zip_entry->ctime,
      zip_entry->ctime_ns);
 if (zip_entry->flg & ATIME_IS_SET)
  archive_entry_set_atime(entry, zip_entry->atime,
      zip_entry->atime_ns);
 if (zip_entry->ssIndex != (uint32_t)-1) {
  zip->entry_bytes_remaining =
      zip->si.ss.unpackSizes[zip_entry->ssIndex];
  archive_entry_set_size(entry, zip->entry_bytes_remaining);
 } else {
  zip->entry_bytes_remaining = 0;
  archive_entry_set_size(entry, 0);
 }


 if (zip->entry_bytes_remaining < 1)
  zip->end_of_entry = 1;

 if ((zip_entry->mode & AE_IFMT) == AE_IFLNK) {
  unsigned char *symname = ((void*)0);
  size_t symsize = 0;





  while (zip->entry_bytes_remaining > 0) {
   const void *buff;
   unsigned char *mem;
   size_t size;
   int64_t offset;

   r = archive_read_format_7zip_read_data(a, &buff,
    &size, &offset);
   if (r < ARCHIVE_WARN) {
    free(symname);
    return (r);
   }
   mem = realloc(symname, symsize + size + 1);
   if (mem == ((void*)0)) {
    free(symname);
    archive_set_error(&a->archive, ENOMEM,
        "Can't allocate memory for Symname");
    return (ARCHIVE_FATAL);
   }
   symname = mem;
   memcpy(symname+symsize, buff, size);
   symsize += size;
  }
  if (symsize == 0) {


   zip_entry->mode &= ~AE_IFMT;
   zip_entry->mode |= AE_IFREG;
   archive_entry_set_mode(entry, zip_entry->mode);
  } else {
   symname[symsize] = '\0';
   archive_entry_copy_symlink(entry,
       (const char *)symname);
  }
  free(symname);
  archive_entry_set_size(entry, 0);
 }


 sprintf(zip->format_name, "7-Zip");
 a->archive.archive_format_name = zip->format_name;

 return (ret);
}
