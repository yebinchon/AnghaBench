
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tar {int header_recursion_depth; int sparse_gnu_major; scalar_t__ sparse_gnu_minor; scalar_t__ sparse_gnu_pending; int entry_bytes_remaining; scalar_t__ process_mac_extensions; int read_concatenated_archives; } ;
struct TYPE_3__ {char* archive_format_name; void* archive_format; } ;
struct archive_read {TYPE_1__ archive; } ;
struct archive_entry_header_ustar {int* typeflag; int magic; } ;
struct archive_entry_header_gnutar {int magic; } ;
struct archive_entry {int dummy; } ;
typedef int ssize_t ;


 int ARCHIVE_EOF ;
 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 void* ARCHIVE_FORMAT_TAR ;
 void* ARCHIVE_FORMAT_TAR_GNUTAR ;
 void* ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE ;
 void* ARCHIVE_FORMAT_TAR_USTAR ;
 int ARCHIVE_OK ;
 int ARCHIVE_RETRY ;
 int ARCHIVE_WARN ;
 int EINVAL ;
 char* __archive_read_ahead (struct archive_read*,int,int*) ;
 int __archive_read_consume (struct archive_read*,int) ;
 scalar_t__ archive_block_is_null (char const*) ;
 int archive_clear_error (TYPE_1__*) ;
 int archive_set_error (TYPE_1__*,int ,char*) ;
 int checksum (struct archive_read*,char const*) ;
 int gnu_sparse_10_read (struct archive_read*,struct tar*,size_t*) ;
 int header_Solaris_ACL (struct archive_read*,struct tar*,struct archive_entry*,char const*,size_t*) ;
 int header_gnutar (struct archive_read*,struct tar*,struct archive_entry*,char const*,size_t*) ;
 int header_longlink (struct archive_read*,struct tar*,struct archive_entry*,char const*,size_t*) ;
 int header_longname (struct archive_read*,struct tar*,struct archive_entry*,char const*,size_t*) ;
 int header_old_tar (struct archive_read*,struct tar*,struct archive_entry*,char const*) ;
 int header_pax_extensions (struct archive_read*,struct tar*,struct archive_entry*,char const*,size_t*) ;
 int header_pax_global (struct archive_read*,struct tar*,struct archive_entry*,char const*,size_t*) ;
 int header_ustar (struct archive_read*,struct tar*,struct archive_entry*,char const*) ;
 int header_volume (struct archive_read*,struct tar*,struct archive_entry*,char const*,size_t*) ;
 int memcmp (int ,char*,int) ;
 int read_mac_metadata_blob (struct archive_read*,struct tar*,struct archive_entry*,char const*,size_t*) ;
 int tar_flush_unconsumed (struct archive_read*,size_t*) ;

__attribute__((used)) static int
tar_read_header(struct archive_read *a, struct tar *tar,
    struct archive_entry *entry, size_t *unconsumed)
{
 ssize_t bytes;
 int err, eof_vol_header;
 const char *h;
 const struct archive_entry_header_ustar *header;
 const struct archive_entry_header_gnutar *gnuheader;

 eof_vol_header = 0;


 for (;;) {
  tar_flush_unconsumed(a, unconsumed);


  h = __archive_read_ahead(a, 512, &bytes);
  if (bytes < 0)
   return ((int)bytes);
  if (bytes == 0) {

   return (ARCHIVE_EOF);
  }
  if (bytes < 512) {
   archive_set_error(&a->archive,
       ARCHIVE_ERRNO_FILE_FORMAT,
       "Truncated tar archive");
   return (ARCHIVE_FATAL);
  }
  *unconsumed = 512;


  if (h[0] != 0 || !archive_block_is_null(h))
   break;


  if (a->archive.archive_format_name == ((void*)0)) {
   a->archive.archive_format = ARCHIVE_FORMAT_TAR;
   a->archive.archive_format_name = "tar";
  }

  if (!tar->read_concatenated_archives) {

   tar_flush_unconsumed(a, unconsumed);
   h = __archive_read_ahead(a, 512, ((void*)0));
   if (h != ((void*)0) && h[0] == 0 && archive_block_is_null(h))
    __archive_read_consume(a, 512);
   archive_clear_error(&a->archive);
   return (ARCHIVE_EOF);
  }





 }
 if (!checksum(a, h)) {
  tar_flush_unconsumed(a, unconsumed);
  archive_set_error(&a->archive, EINVAL, "Damaged tar archive");
  return (ARCHIVE_RETRY);
 }

 if (++tar->header_recursion_depth > 32) {
  tar_flush_unconsumed(a, unconsumed);
  archive_set_error(&a->archive, EINVAL, "Too many special headers");
  return (ARCHIVE_WARN);
 }


 header = (const struct archive_entry_header_ustar *)h;

 switch(header->typeflag[0]) {
 case 'A':
  a->archive.archive_format = ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE;
  a->archive.archive_format_name = "Solaris tar";
  err = header_Solaris_ACL(a, tar, entry, h, unconsumed);
  break;
 case 'g':
  a->archive.archive_format = ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE;
  a->archive.archive_format_name = "POSIX pax interchange format";
  err = header_pax_global(a, tar, entry, h, unconsumed);
  if (err == ARCHIVE_EOF)
   return (err);
  break;
 case 'K':
  err = header_longlink(a, tar, entry, h, unconsumed);
  break;
 case 'L':
  err = header_longname(a, tar, entry, h, unconsumed);
  break;
 case 'V':
  err = header_volume(a, tar, entry, h, unconsumed);
  if (err == ARCHIVE_EOF)
   eof_vol_header = 1;
  break;
 case 'X':
  a->archive.archive_format = ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE;
  a->archive.archive_format_name =
      "POSIX pax interchange format (Sun variant)";
  err = header_pax_extensions(a, tar, entry, h, unconsumed);
  break;
 case 'x':
  a->archive.archive_format = ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE;
  a->archive.archive_format_name = "POSIX pax interchange format";
  err = header_pax_extensions(a, tar, entry, h, unconsumed);
  break;
 default:
  gnuheader = (const struct archive_entry_header_gnutar *)h;
  if (memcmp(gnuheader->magic, "ustar  \0", 8) == 0) {
   a->archive.archive_format = ARCHIVE_FORMAT_TAR_GNUTAR;
   a->archive.archive_format_name = "GNU tar format";
   err = header_gnutar(a, tar, entry, h, unconsumed);
  } else if (memcmp(header->magic, "ustar", 5) == 0) {
   if (a->archive.archive_format != ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE) {
    a->archive.archive_format = ARCHIVE_FORMAT_TAR_USTAR;
    a->archive.archive_format_name = "POSIX ustar format";
   }
   err = header_ustar(a, tar, entry, h);
  } else {
   a->archive.archive_format = ARCHIVE_FORMAT_TAR;
   a->archive.archive_format_name = "tar (non-POSIX)";
   err = header_old_tar(a, tar, entry, h);
  }
 }
 if (err == ARCHIVE_FATAL)
  return (err);

 tar_flush_unconsumed(a, unconsumed);

 h = ((void*)0);
 header = ((void*)0);

 --tar->header_recursion_depth;




 if ((err == ARCHIVE_WARN || err == ARCHIVE_OK) &&
     tar->header_recursion_depth == 0 &&
     tar->process_mac_extensions) {
  int err2 = read_mac_metadata_blob(a, tar, entry, h, unconsumed);
  if (err2 < err)
   err = err2;
 }


 if (err == ARCHIVE_WARN || err == ARCHIVE_OK) {
  if (tar->sparse_gnu_pending) {
   if (tar->sparse_gnu_major == 1 &&
       tar->sparse_gnu_minor == 0) {
    ssize_t bytes_read;

    tar->sparse_gnu_pending = 0;

    bytes_read = gnu_sparse_10_read(a, tar, unconsumed);
    if (bytes_read < 0)
     return ((int)bytes_read);
    tar->entry_bytes_remaining -= bytes_read;
   } else {
    archive_set_error(&a->archive,
        ARCHIVE_ERRNO_MISC,
        "Unrecognized GNU sparse file format");
    return (ARCHIVE_WARN);
   }
   tar->sparse_gnu_pending = 0;
  }
  return (err);
 }
 if (err == ARCHIVE_EOF) {
  if (!eof_vol_header) {

   archive_set_error(&a->archive, EINVAL,
       "Damaged tar archive");
  } else {


   return (ARCHIVE_EOF);
  }
 }
 return (ARCHIVE_FATAL);
}
