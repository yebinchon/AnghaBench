
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpio {int entry_bytes_remaining; int padding; } ;
struct archive_write {int archive; scalar_t__ format_data; } ;
struct archive_string_conv {int dummy; } ;
struct archive_entry {int dummy; } ;
typedef int int64_t ;


 scalar_t__ AE_IFBLK ;
 scalar_t__ AE_IFCHR ;
 scalar_t__ AE_IFREG ;
 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 scalar_t__ ENOMEM ;
 scalar_t__ ERANGE ;
 int PAD4 (int) ;
 int __archive_write_output (struct archive_write*,char const*,int) ;
 struct archive_entry* __la_win_entry_in_posix_pathseparator (struct archive_entry*) ;
 int archive_entry_devmajor (struct archive_entry*) ;
 int archive_entry_devminor (struct archive_entry*) ;
 scalar_t__ archive_entry_filetype (struct archive_entry*) ;
 int archive_entry_free (struct archive_entry*) ;
 int archive_entry_gid (struct archive_entry*) ;
 int archive_entry_ino64 (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 int archive_entry_nlink (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_pathname_l (struct archive_entry*,char const**,size_t*,struct archive_string_conv*) ;
 int archive_entry_rdevmajor (struct archive_entry*) ;
 int archive_entry_rdevminor (struct archive_entry*) ;
 int archive_entry_set_size (struct archive_entry*,int ) ;
 int archive_entry_size (struct archive_entry*) ;
 int archive_entry_symlink (struct archive_entry*) ;
 int archive_entry_symlink_l (struct archive_entry*,char const**,size_t*,struct archive_string_conv*) ;
 int archive_entry_uid (struct archive_entry*) ;
 int archive_set_error (int *,scalar_t__,char*,...) ;
 int archive_string_conversion_charset_name (struct archive_string_conv*) ;
 int c_checksum_offset ;
 int c_checksum_size ;
 int c_devmajor_offset ;
 int c_devmajor_size ;
 int c_devminor_offset ;
 int c_devminor_size ;
 int c_filesize_offset ;
 int c_filesize_size ;
 int c_gid_offset ;
 int c_gid_size ;
 int c_header_size ;
 int c_ino_offset ;
 int c_ino_size ;
 int c_magic_offset ;
 int c_magic_size ;
 int c_mode_offset ;
 int c_mode_size ;
 int c_mtime_offset ;
 int c_mtime_size ;
 int c_namesize_offset ;
 int c_namesize_size ;
 int c_nlink_offset ;
 int c_nlink_size ;
 int c_rdevmajor_offset ;
 int c_rdevmajor_size ;
 int c_rdevminor_offset ;
 int c_rdevminor_size ;
 int c_uid_offset ;
 int c_uid_size ;
 scalar_t__ errno ;
 int format_hex (int,char*,int ) ;
 struct archive_string_conv* get_sconv (struct archive_write*) ;
 int memset (char*,int ,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int
write_header(struct archive_write *a, struct archive_entry *entry)
{
 int64_t ino;
 struct cpio *cpio;
 const char *p, *path;
 int pathlength, ret, ret_final;
 char h[c_header_size];
 struct archive_string_conv *sconv;
 struct archive_entry *entry_main;
 size_t len;
 int pad;

 cpio = (struct cpio *)a->format_data;
 ret_final = ARCHIVE_OK;
 sconv = get_sconv(a);
 entry_main = ((void*)0);


 ret = archive_entry_pathname_l(entry, &path, &len, sconv);
 if (ret != 0) {
  if (errno == ENOMEM) {
   archive_set_error(&a->archive, ENOMEM,
       "Can't allocate memory for Pathname");
   ret_final = ARCHIVE_FATAL;
   goto exit_write_header;
  }
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Can't translate pathname '%s' to %s",
      archive_entry_pathname(entry),
      archive_string_conversion_charset_name(sconv));
  ret_final = ARCHIVE_WARN;
 }
 pathlength = (int)len + 1;

 memset(h, 0, c_header_size);
 format_hex(0x070701, h + c_magic_offset, c_magic_size);
 format_hex(archive_entry_devmajor(entry), h + c_devmajor_offset,
     c_devmajor_size);
 format_hex(archive_entry_devminor(entry), h + c_devminor_offset,
     c_devminor_size);

 ino = archive_entry_ino64(entry);
 if (ino > 0xffffffff) {
  archive_set_error(&a->archive, ERANGE,
      "large inode number truncated");
  ret_final = ARCHIVE_WARN;
 }


 format_hex(ino & 0xffffffff, h + c_ino_offset, c_ino_size);
 format_hex(archive_entry_mode(entry), h + c_mode_offset, c_mode_size);
 format_hex(archive_entry_uid(entry), h + c_uid_offset, c_uid_size);
 format_hex(archive_entry_gid(entry), h + c_gid_offset, c_gid_size);
 format_hex(archive_entry_nlink(entry), h + c_nlink_offset, c_nlink_size);
 if (archive_entry_filetype(entry) == AE_IFBLK
     || archive_entry_filetype(entry) == AE_IFCHR) {
     format_hex(archive_entry_rdevmajor(entry), h + c_rdevmajor_offset, c_rdevmajor_size);
     format_hex(archive_entry_rdevminor(entry), h + c_rdevminor_offset, c_rdevminor_size);
 } else {
     format_hex(0, h + c_rdevmajor_offset, c_rdevmajor_size);
     format_hex(0, h + c_rdevminor_offset, c_rdevminor_size);
 }
 format_hex(archive_entry_mtime(entry), h + c_mtime_offset, c_mtime_size);
 format_hex(pathlength, h + c_namesize_offset, c_namesize_size);
 format_hex(0, h + c_checksum_offset, c_checksum_size);


 if (archive_entry_filetype(entry) != AE_IFREG)
  archive_entry_set_size(entry, 0);


 ret = archive_entry_symlink_l(entry, &p, &len, sconv);
 if (ret != 0) {
  if (errno == ENOMEM) {
   archive_set_error(&a->archive, ENOMEM,
       "Can't allocate memory for Likname");
   ret_final = ARCHIVE_FATAL;
   goto exit_write_header;
  }
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Can't translate linkname '%s' to %s",
      archive_entry_symlink(entry),
      archive_string_conversion_charset_name(sconv));
  ret_final = ARCHIVE_WARN;
 }
 if (len > 0 && p != ((void*)0) && *p != '\0')
  ret = format_hex(strlen(p), h + c_filesize_offset,
      c_filesize_size);
 else
  ret = format_hex(archive_entry_size(entry),
      h + c_filesize_offset, c_filesize_size);
 if (ret) {
  archive_set_error(&a->archive, ERANGE,
      "File is too large for this format.");
  ret_final = ARCHIVE_FAILED;
  goto exit_write_header;
 }

 ret = __archive_write_output(a, h, c_header_size);
 if (ret != ARCHIVE_OK) {
  ret_final = ARCHIVE_FATAL;
  goto exit_write_header;
 }


 ret = __archive_write_output(a, path, pathlength);
 if (ret != ARCHIVE_OK) {
  ret_final = ARCHIVE_FATAL;
  goto exit_write_header;
 }
 pad = PAD4(pathlength + c_header_size);
 if (pad) {
  ret = __archive_write_output(a, "\0\0\0", pad);
  if (ret != ARCHIVE_OK) {
   ret_final = ARCHIVE_FATAL;
   goto exit_write_header;
  }
 }

 cpio->entry_bytes_remaining = archive_entry_size(entry);
 cpio->padding = (int)PAD4(cpio->entry_bytes_remaining);


 if (p != ((void*)0) && *p != '\0') {
  ret = __archive_write_output(a, p, strlen(p));
  if (ret != ARCHIVE_OK) {
   ret_final = ARCHIVE_FATAL;
   goto exit_write_header;
  }
  pad = PAD4(strlen(p));
  ret = __archive_write_output(a, "\0\0\0", pad);
  if (ret != ARCHIVE_OK) {
   ret_final = ARCHIVE_FATAL;
   goto exit_write_header;
  }
 }
exit_write_header:
 archive_entry_free(entry_main);
 return (ret_final);
}
