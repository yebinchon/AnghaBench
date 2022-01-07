
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ uInt ;
struct TYPE_2__ {scalar_t__ avail_out; int next_out; void* opaque; void* zfree; void* zalloc; } ;
struct zip {int flags; scalar_t__ written_bytes; scalar_t__ entry_offset; size_t entry_uncompressed_limit; size_t entry_compressed_size; size_t entry_uncompressed_size; int entry_flags; int entry_uses_zip64; int entry_crc32; int (* crc32func ) (int,unsigned char const*,size_t) ;int entry_encryption; int encryption_type; void* entry_compression; void* requested_compression; unsigned char trad_chkdat; unsigned char* file_header; int aes_vendor; int deflate_compression_level; TYPE_1__ stream; scalar_t__ len_buf; int buf; scalar_t__ entry_uncompressed_written; scalar_t__ entry_compressed_written; struct archive_entry* entry; int central_directory_bytes; int file_header_extra_offset; int central_directory_entries; struct archive_string_conv* opt_sconv; scalar_t__ hctx_valid; scalar_t__ cctx_valid; scalar_t__ tctx_valid; int hctx; int cctx; } ;
struct archive_write {int archive; struct zip* format_data; } ;
struct archive_string_conv {int dummy; } ;
struct archive_entry {int dummy; } ;
typedef scalar_t__ mode_t ;
typedef int local_header ;
typedef int local_extra ;
typedef scalar_t__ int64_t ;


 int AES_VENDOR_AE_1 ;
 int AES_VENDOR_AE_2 ;
 scalar_t__ AE_IFDIR ;
 scalar_t__ AE_IFLNK ;
 scalar_t__ AE_IFREG ;
 int ARCHIVE_ERRNO_FILE_FORMAT ;
 scalar_t__ ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 scalar_t__ AUTH_CODE_SIZE ;
 int CODESET ;
 void* COMPRESSION_DEFAULT ;
 int COMPRESSION_DEFLATE ;
 void* COMPRESSION_STORE ;
 void* COMPRESSION_UNSPECIFIED ;



 scalar_t__ ENOMEM ;
 size_t INT64_MAX ;
 scalar_t__ TRAD_HEADER_SIZE ;
 scalar_t__ WINZIP_AES128_HEADER_SIZE ;
 scalar_t__ WINZIP_AES256_HEADER_SIZE ;
 int WINZIP_AES_ENCRYPTION ;
 scalar_t__ ZIP_4GB_MAX ;
 scalar_t__ ZIP_4GB_MAX_UNCOMPRESSED ;
 int ZIP_ENTRY_FLAG_ENCRYPTED ;
 int ZIP_ENTRY_FLAG_LENGTH_AT_END ;
 int ZIP_ENTRY_FLAG_UTF8_NAME ;
 int ZIP_FLAG_AVOID_ZIP64 ;
 int ZIP_FLAG_EXPERIMENT_xl ;
 int ZIP_FLAG_FORCE_ZIP64 ;
 int Z_DEFAULT_STRATEGY ;
 int Z_DEFLATED ;
 void* Z_NULL ;
 scalar_t__ Z_OK ;
 int __archive_write_output (struct archive_write*,...) ;
 struct archive_entry* __la_win_entry_in_posix_pathseparator (struct archive_entry*) ;
 int archive_encrypto_aes_ctr_release (int *) ;
 scalar_t__ archive_entry_atime (struct archive_entry*) ;
 scalar_t__ archive_entry_atime_is_set (struct archive_entry*) ;
 void* archive_entry_clone (struct archive_entry*) ;
 scalar_t__ archive_entry_ctime (struct archive_entry*) ;
 scalar_t__ archive_entry_ctime_is_set (struct archive_entry*) ;
 scalar_t__ archive_entry_filetype (struct archive_entry*) ;
 int archive_entry_free (struct archive_entry*) ;
 scalar_t__ archive_entry_gid (struct archive_entry*) ;
 scalar_t__ archive_entry_mode (struct archive_entry*) ;
 scalar_t__ archive_entry_mtime (struct archive_entry*) ;
 scalar_t__ archive_entry_mtime_is_set (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 scalar_t__ archive_entry_pathname_l (struct archive_entry*,char const**,size_t*,struct archive_string_conv*) ;
 int archive_entry_set_pathname (struct archive_entry*,char const*) ;
 int archive_entry_set_size (struct archive_entry*,int ) ;
 int archive_entry_set_symlink (struct archive_entry*,char const*) ;
 int archive_entry_size (struct archive_entry*) ;
 scalar_t__ archive_entry_size_is_set (struct archive_entry*) ;
 char* archive_entry_symlink (struct archive_entry*) ;
 scalar_t__ archive_entry_symlink_l (struct archive_entry*,char const**,size_t*,struct archive_string_conv*) ;
 scalar_t__ archive_entry_uid (struct archive_entry*) ;
 int archive_hmac_sha1_cleanup (int *) ;
 int archive_le16enc (unsigned char*,int) ;
 int archive_le32enc (unsigned char*,int) ;
 int archive_le64enc (unsigned char*,size_t) ;
 int archive_set_error (int *,scalar_t__,char*,...) ;
 int archive_string_conversion_charset_name (struct archive_string_conv*) ;
 void* cd_alloc (struct zip*,int) ;
 int copy_path (struct archive_entry*,unsigned char*) ;
 scalar_t__ deflateInit2 (TYPE_1__*,int ,int ,int,int,int ) ;
 int dos_time (scalar_t__) ;
 scalar_t__ errno ;
 struct archive_string_conv* get_sconv (struct archive_write*,struct zip*) ;
 int is_all_ascii (int ) ;
 int memcpy (unsigned char*,...) ;
 int memset (unsigned char*,int ,int) ;
 int nl_langinfo (int ) ;
 size_t path_length (struct archive_entry*) ;
 scalar_t__ strcmp (int ,char*) ;
 size_t strlen (char const*) ;
 int stub1 (int,unsigned char const*,size_t) ;
 int stub2 (int,unsigned char const*,size_t) ;
 int write_path (struct archive_entry*,struct archive_write*) ;

__attribute__((used)) static int
archive_write_zip_header(struct archive_write *a, struct archive_entry *entry)
{
 unsigned char local_header[32];
 unsigned char local_extra[144];
 struct zip *zip = a->format_data;
 unsigned char *e;
 unsigned char *cd_extra;
 size_t filename_length;
 const char *slink = ((void*)0);
 size_t slink_size = 0;
 struct archive_string_conv *sconv = get_sconv(a, zip);
 int ret, ret2 = ARCHIVE_OK;
 mode_t type;
 int version_needed = 10;


 type = archive_entry_filetype(entry);
 if (type != AE_IFREG && type != AE_IFDIR && type != AE_IFLNK) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Filetype not supported");
  return ARCHIVE_FAILED;
 };


 if (zip->flags & ZIP_FLAG_AVOID_ZIP64) {

  if (archive_entry_size_is_set(entry)
      && (archive_entry_size(entry) > ZIP_4GB_MAX)) {
   archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
       "Files > 4GB require Zip64 extensions");
   return ARCHIVE_FAILED;
  }

  if (zip->written_bytes > ZIP_4GB_MAX) {
   archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
       "Archives > 4GB require Zip64 extensions");
   return ARCHIVE_FAILED;
  }
 }


 if (type != AE_IFREG)
  archive_entry_set_size(entry, 0);



 zip->entry_offset = zip->written_bytes;
 zip->entry_uncompressed_limit = INT64_MAX;
 zip->entry_compressed_size = 0;
 zip->entry_uncompressed_size = 0;
 zip->entry_compressed_written = 0;
 zip->entry_uncompressed_written = 0;
 zip->entry_flags = 0;
 zip->entry_uses_zip64 = 0;
 zip->entry_crc32 = zip->crc32func(0, ((void*)0), 0);
 zip->entry_encryption = 0;
 archive_entry_free(zip->entry);
 zip->entry = ((void*)0);

 if (zip->cctx_valid)
  archive_encrypto_aes_ctr_release(&zip->cctx);
 if (zip->hctx_valid)
  archive_hmac_sha1_cleanup(&zip->hctx);
 zip->tctx_valid = zip->cctx_valid = zip->hctx_valid = 0;

 if (type == AE_IFREG
      &&(!archive_entry_size_is_set(entry)
   || archive_entry_size(entry) > 0)) {
  switch (zip->encryption_type) {
  case 130:
  case 129:
  case 128:
   zip->entry_flags |= ZIP_ENTRY_FLAG_ENCRYPTED;
   zip->entry_encryption = zip->encryption_type;
   break;
  default:
   break;
  }
 }
 zip->entry = archive_entry_clone(entry);

 if (zip->entry == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate zip header data");
  return (ARCHIVE_FATAL);
 }

 if (sconv != ((void*)0)) {
  const char *p;
  size_t len;

  if (archive_entry_pathname_l(entry, &p, &len, sconv) != 0) {
   if (errno == ENOMEM) {
    archive_set_error(&a->archive, ENOMEM,
        "Can't allocate memory for Pathname");
    return (ARCHIVE_FATAL);
   }
   archive_set_error(&a->archive,
       ARCHIVE_ERRNO_FILE_FORMAT,
       "Can't translate Pathname '%s' to %s",
       archive_entry_pathname(entry),
       archive_string_conversion_charset_name(sconv));
   ret2 = ARCHIVE_WARN;
  }
  if (len > 0)
   archive_entry_set_pathname(zip->entry, p);






  if (type == AE_IFLNK) {
   if (archive_entry_symlink_l(entry, &p, &len, sconv)) {
    if (errno == ENOMEM) {
     archive_set_error(&a->archive, ENOMEM,
         "Can't allocate memory "
         " for Symlink");
     return (ARCHIVE_FATAL);
    }

   } else if (len > 0)
    archive_entry_set_symlink(zip->entry, p);
  }
 }


 if (!is_all_ascii(archive_entry_pathname(zip->entry))) {
  if (zip->opt_sconv != ((void*)0)) {
   if (strcmp(archive_string_conversion_charset_name(
     zip->opt_sconv), "UTF-8") == 0)
    zip->entry_flags |= ZIP_ENTRY_FLAG_UTF8_NAME;




  }
 }
 filename_length = path_length(zip->entry);


 if (type == AE_IFLNK) {
  slink = archive_entry_symlink(zip->entry);
  if (slink != ((void*)0))
   slink_size = strlen(slink);
  else
   slink_size = 0;
  zip->entry_uncompressed_limit = slink_size;
  zip->entry_compressed_size = slink_size;
  zip->entry_uncompressed_size = slink_size;
  zip->entry_crc32 = zip->crc32func(zip->entry_crc32,
      (const unsigned char *)slink, slink_size);
  zip->entry_compression = COMPRESSION_STORE;
  version_needed = 20;
 } else if (type != AE_IFREG) {
  zip->entry_compression = COMPRESSION_STORE;
  zip->entry_uncompressed_limit = 0;
  version_needed = 20;
 } else if (archive_entry_size_is_set(zip->entry)) {
  int64_t size = archive_entry_size(zip->entry);
  int64_t additional_size = 0;

  zip->entry_uncompressed_limit = size;
  zip->entry_compression = zip->requested_compression;
  if (zip->entry_compression == COMPRESSION_UNSPECIFIED) {
   zip->entry_compression = COMPRESSION_DEFAULT;
  }
  if (zip->entry_compression == COMPRESSION_STORE) {
   zip->entry_compressed_size = size;
   zip->entry_uncompressed_size = size;
   version_needed = 10;
  } else {
   zip->entry_uncompressed_size = size;
   version_needed = 20;
  }

  if (zip->entry_flags & ZIP_ENTRY_FLAG_ENCRYPTED) {
   switch (zip->entry_encryption) {
   case 130:
    additional_size = TRAD_HEADER_SIZE;
    version_needed = 20;
    break;
   case 129:
    additional_size = WINZIP_AES128_HEADER_SIZE
        + AUTH_CODE_SIZE;
    version_needed = 20;
    break;
   case 128:
    additional_size = WINZIP_AES256_HEADER_SIZE
        + AUTH_CODE_SIZE;
    version_needed = 20;
    break;
   default:
    break;
   }
   if (zip->entry_compression == COMPRESSION_STORE)
    zip->entry_compressed_size += additional_size;
  }
  if ((zip->flags & ZIP_FLAG_FORCE_ZIP64)
      || (zip->entry_uncompressed_size + additional_size > ZIP_4GB_MAX)
      || (zip->entry_uncompressed_size > ZIP_4GB_MAX_UNCOMPRESSED
   && zip->entry_compression != COMPRESSION_STORE)) {
   zip->entry_uses_zip64 = 1;
   version_needed = 45;
  }


  zip->entry_flags |= ZIP_ENTRY_FLAG_LENGTH_AT_END;
 } else {





  zip->entry_compression = COMPRESSION_DEFAULT;
  zip->entry_flags |= ZIP_ENTRY_FLAG_LENGTH_AT_END;
  if ((zip->flags & ZIP_FLAG_AVOID_ZIP64) == 0) {
   zip->entry_uses_zip64 = 1;
   version_needed = 45;
  } else if (zip->entry_compression == COMPRESSION_STORE) {
   version_needed = 10;
  } else {
   version_needed = 20;
  }

  if (zip->entry_flags & ZIP_ENTRY_FLAG_ENCRYPTED) {
   switch (zip->entry_encryption) {
   case 130:
   case 129:
   case 128:
    if (version_needed < 20)
     version_needed = 20;
    break;
   default:
    break;
   }
  }
 }


 memset(local_header, 0, sizeof(local_header));
 memcpy(local_header, "PK\003\004", 4);
 archive_le16enc(local_header + 4, version_needed);
 archive_le16enc(local_header + 6, zip->entry_flags);
 if (zip->entry_encryption == 129
     || zip->entry_encryption == 128)
  archive_le16enc(local_header + 8, WINZIP_AES_ENCRYPTION);
 else
  archive_le16enc(local_header + 8, zip->entry_compression);
 archive_le32enc(local_header + 10,
  dos_time(archive_entry_mtime(zip->entry)));
 archive_le32enc(local_header + 14, zip->entry_crc32);
 if (zip->entry_uses_zip64) {





  archive_le32enc(local_header + 18, ZIP_4GB_MAX);
  archive_le32enc(local_header + 22, ZIP_4GB_MAX);
 } else {
  archive_le32enc(local_header + 18, (uint32_t)zip->entry_compressed_size);
  archive_le32enc(local_header + 22, (uint32_t)zip->entry_uncompressed_size);
 }
 archive_le16enc(local_header + 26, (uint16_t)filename_length);

 if (zip->entry_encryption == 130) {
  if (zip->entry_flags & ZIP_ENTRY_FLAG_LENGTH_AT_END)
   zip->trad_chkdat = local_header[11];
  else
   zip->trad_chkdat = local_header[17];
 }


 zip->file_header = cd_alloc(zip, 46);

 ++zip->central_directory_entries;
 memset(zip->file_header, 0, 46);
 memcpy(zip->file_header, "PK\001\002", 4);

 archive_le16enc(zip->file_header + 4, 3 * 256 + version_needed);
 archive_le16enc(zip->file_header + 6, version_needed);
 archive_le16enc(zip->file_header + 8, zip->entry_flags);
 if (zip->entry_encryption == 129
     || zip->entry_encryption == 128)
  archive_le16enc(zip->file_header + 10, WINZIP_AES_ENCRYPTION);
 else
  archive_le16enc(zip->file_header + 10, zip->entry_compression);
 archive_le32enc(zip->file_header + 12,
  dos_time(archive_entry_mtime(zip->entry)));
 archive_le16enc(zip->file_header + 28, (uint16_t)filename_length);

 archive_le32enc(zip->file_header + 38,
     ((uint32_t)archive_entry_mode(zip->entry)) << 16);
 e = cd_alloc(zip, filename_length);

 copy_path(zip->entry, e);


 memset(local_extra, 0, sizeof(local_extra));
 e = local_extra;






 memcpy(e, "UT", 2);
 archive_le16enc(e + 2,
     1
     + (archive_entry_mtime_is_set(entry) ? 4 : 0)
     + (archive_entry_atime_is_set(entry) ? 4 : 0)
     + (archive_entry_ctime_is_set(entry) ? 4 : 0));
 e += 4;
 *e++ =
     (archive_entry_mtime_is_set(entry) ? 1 : 0)
     | (archive_entry_atime_is_set(entry) ? 2 : 0)
     | (archive_entry_ctime_is_set(entry) ? 4 : 0);
 if (archive_entry_mtime_is_set(entry)) {
  archive_le32enc(e, (uint32_t)archive_entry_mtime(entry));
  e += 4;
 }
 if (archive_entry_atime_is_set(entry)) {
  archive_le32enc(e, (uint32_t)archive_entry_atime(entry));
  e += 4;
 }
 if (archive_entry_ctime_is_set(entry)) {
  archive_le32enc(e, (uint32_t)archive_entry_ctime(entry));
  e += 4;
 }



 memcpy(e, "ux\013\000\001", 5);
 e += 5;
 *e++ = 4;
 archive_le32enc(e, (uint32_t)archive_entry_uid(entry));
 e += 4;
 *e++ = 4;
 archive_le32enc(e, (uint32_t)archive_entry_gid(entry));
 e += 4;


 if ((zip->entry_flags & ZIP_ENTRY_FLAG_ENCRYPTED)
     && (zip->entry_encryption == 129
         || zip->entry_encryption == 128)) {

  memcpy(e, "\001\231\007\000\001\000AE", 8);






  if (archive_entry_size_is_set(zip->entry)
      && archive_entry_size(zip->entry) < 20) {
   archive_le16enc(e+4, AES_VENDOR_AE_2);
   zip->aes_vendor = AES_VENDOR_AE_2;
  } else
   zip->aes_vendor = AES_VENDOR_AE_1;
  e += 8;

  *e++ = (zip->entry_encryption == 129)?1:3;

  archive_le16enc(e, zip->entry_compression);
  e += 2;
 }


 zip->file_header_extra_offset = zip->central_directory_bytes;
 cd_extra = cd_alloc(zip, e - local_extra);
 memcpy(cd_extra, local_extra, e - local_extra);
 if (zip->entry_uses_zip64) {
  unsigned char *zip64_start = e;
  memcpy(e, "\001\000\020\000", 4);
  e += 4;
  archive_le64enc(e, zip->entry_uncompressed_size);
  e += 8;
  archive_le64enc(e, zip->entry_compressed_size);
  e += 8;
  archive_le16enc(zip64_start + 2, (uint16_t)(e - (zip64_start + 4)));
 }

 if (zip->flags & ZIP_FLAG_EXPERIMENT_xl) {

  unsigned char *external_info = e;
  int included = 7;
  memcpy(e, "xl\000\000", 4);
  e += 4;
  e[0] = included;
  e += 1;
  if (included & 1) {
   archive_le16enc(e,
       3 * 256 + version_needed);
   e += 2;
  }
  if (included & 2) {
   archive_le16enc(e, 0);
   e += 2;
  }
  if (included & 4) {
   archive_le32enc(e,
       ((uint32_t)archive_entry_mode(zip->entry)) << 16);
   e += 4;
  }
  if (included & 8) {

  }
  archive_le16enc(external_info + 2, (uint16_t)(e - (external_info + 4)));
 }


 archive_le16enc(local_header + 28, (uint16_t)(e - local_extra));

 ret = __archive_write_output(a, local_header, 30);
 if (ret != ARCHIVE_OK)
  return (ARCHIVE_FATAL);
 zip->written_bytes += 30;

 ret = write_path(zip->entry, a);
 if (ret <= ARCHIVE_OK)
  return (ARCHIVE_FATAL);
 zip->written_bytes += ret;

 ret = __archive_write_output(a, local_extra, e - local_extra);
 if (ret != ARCHIVE_OK)
  return (ARCHIVE_FATAL);
 zip->written_bytes += e - local_extra;


 if (slink != ((void*)0)) {
  ret = __archive_write_output(a, slink, slink_size);
  if (ret != ARCHIVE_OK)
   return (ARCHIVE_FATAL);
  zip->entry_compressed_written += slink_size;
  zip->entry_uncompressed_written += slink_size;
  zip->written_bytes += slink_size;
 }
 return (ret2);
}
