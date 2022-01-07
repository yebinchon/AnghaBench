
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int s; } ;
struct tar {scalar_t__ entry_bytes_remaining; scalar_t__ realsize; int sparse_allowed; int sconv; TYPE_1__ entry_linkpath; } ;
struct TYPE_6__ {int archive_format; } ;
struct archive_read {TYPE_4__ archive; } ;
struct archive_entry_header_ustar {char* typeflag; int mtime; int size; int gid; int uid; int mode; scalar_t__* linkname; } ;
struct archive_entry {int dummy; } ;
typedef int mode_t ;


 int AE_IFBLK ;
 int AE_IFCHR ;
 int AE_IFDIR ;
 int AE_IFIFO ;
 int AE_IFLNK ;
 int AE_IFREG ;
 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_FORMAT_TAR ;
 int ARCHIVE_FORMAT_TAR_GNUTAR ;
 int ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE ;
 int ARCHIVE_OK ;
 scalar_t__ INT64_MAX ;
 int archive_entry_copy_hardlink_l (struct archive_entry*,int ,int ,int ) ;
 int archive_entry_copy_symlink_l (struct archive_entry*,int ,int ,int ) ;
 int archive_entry_set_filetype (struct archive_entry*,int ) ;
 int archive_entry_set_gid (struct archive_entry*,scalar_t__) ;
 int archive_entry_set_mode (struct archive_entry*,int ) ;
 int archive_entry_set_mtime (struct archive_entry*,scalar_t__,int ) ;
 int archive_entry_set_size (struct archive_entry*,scalar_t__) ;
 int archive_entry_set_uid (struct archive_entry*,scalar_t__) ;
 int archive_entry_size (struct archive_entry*) ;
 int archive_read_format_tar_bid (struct archive_read*,int) ;
 int archive_set_error (TYPE_4__*,int ,char*) ;
 int archive_string_empty (TYPE_1__*) ;
 int archive_strlen (TYPE_1__*) ;
 int archive_strncpy (TYPE_1__*,scalar_t__*,int) ;
 int set_conversion_failed_error (struct archive_read*,int ,char*) ;
 scalar_t__ tar_atol (int ,int) ;

__attribute__((used)) static int
header_common(struct archive_read *a, struct tar *tar,
    struct archive_entry *entry, const void *h)
{
 const struct archive_entry_header_ustar *header;
 char tartype;
 int err = ARCHIVE_OK;

 header = (const struct archive_entry_header_ustar *)h;
 if (header->linkname[0])
  archive_strncpy(&(tar->entry_linkpath),
      header->linkname, sizeof(header->linkname));
 else
  archive_string_empty(&(tar->entry_linkpath));


 archive_entry_set_mode(entry,
  (mode_t)tar_atol(header->mode, sizeof(header->mode)));
 archive_entry_set_uid(entry, tar_atol(header->uid, sizeof(header->uid)));
 archive_entry_set_gid(entry, tar_atol(header->gid, sizeof(header->gid)));
 tar->entry_bytes_remaining = tar_atol(header->size, sizeof(header->size));
 if (tar->entry_bytes_remaining < 0) {
  tar->entry_bytes_remaining = 0;
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Tar entry has negative size");
  return (ARCHIVE_FATAL);
 }
 if (tar->entry_bytes_remaining == INT64_MAX) {

  tar->entry_bytes_remaining = 0;
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Tar entry size overflow");
  return (ARCHIVE_FATAL);
 }
 tar->realsize = tar->entry_bytes_remaining;
 archive_entry_set_size(entry, tar->entry_bytes_remaining);
 archive_entry_set_mtime(entry, tar_atol(header->mtime, sizeof(header->mtime)), 0);


 tartype = header->typeflag[0];

 switch (tartype) {
 case '1':
  if (archive_entry_copy_hardlink_l(entry, tar->entry_linkpath.s,
      archive_strlen(&(tar->entry_linkpath)), tar->sconv) != 0) {
   err = set_conversion_failed_error(a, tar->sconv,
       "Linkname");
   if (err == ARCHIVE_FATAL)
    return (err);
  }
  if (archive_entry_size(entry) > 0)
   archive_entry_set_filetype(entry, AE_IFREG);
  if (archive_entry_size(entry) == 0) {

  } else if (a->archive.archive_format
      == ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE) {

  } else if (a->archive.archive_format == ARCHIVE_FORMAT_TAR
      || a->archive.archive_format == ARCHIVE_FORMAT_TAR_GNUTAR)
  {

   archive_entry_set_size(entry, 0);
   tar->entry_bytes_remaining = 0;
  } else if (archive_read_format_tar_bid(a, 50) > 50) {






   archive_entry_set_size(entry, 0);
   tar->entry_bytes_remaining = 0;
  }
  break;
 case '2':
  archive_entry_set_filetype(entry, AE_IFLNK);
  archive_entry_set_size(entry, 0);
  tar->entry_bytes_remaining = 0;
  if (archive_entry_copy_symlink_l(entry, tar->entry_linkpath.s,
      archive_strlen(&(tar->entry_linkpath)), tar->sconv) != 0) {
   err = set_conversion_failed_error(a, tar->sconv,
       "Linkname");
   if (err == ARCHIVE_FATAL)
    return (err);
  }
  break;
 case '3':
  archive_entry_set_filetype(entry, AE_IFCHR);
  archive_entry_set_size(entry, 0);
  tar->entry_bytes_remaining = 0;
  break;
 case '4':
  archive_entry_set_filetype(entry, AE_IFBLK);
  archive_entry_set_size(entry, 0);
  tar->entry_bytes_remaining = 0;
  break;
 case '5':
  archive_entry_set_filetype(entry, AE_IFDIR);
  archive_entry_set_size(entry, 0);
  tar->entry_bytes_remaining = 0;
  break;
 case '6':
  archive_entry_set_filetype(entry, AE_IFIFO);
  archive_entry_set_size(entry, 0);
  tar->entry_bytes_remaining = 0;
  break;
 case 'D':





  archive_entry_set_filetype(entry, AE_IFDIR);
  break;
 case 'M':






  break;
 case 'N':



  archive_entry_set_filetype(entry, AE_IFREG);
  break;
 case 'S':





 case '0':





  tar->sparse_allowed = 1;

 default:




  archive_entry_set_filetype(entry, AE_IFREG);
  break;
 }
 return (err);
}
