
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tar {int entry_padding; int entry_bytes_remaining; int realsize_override; scalar_t__ realsize; int sconv; } ;
struct archive_read {int dummy; } ;
struct archive_entry_header_gnutar {char* typeflag; scalar_t__* rdevmajor; scalar_t__* rdevminor; scalar_t__* atime; scalar_t__* ctime; scalar_t__* realsize; scalar_t__* isextended; TYPE_1__* sparse; int gname; int uname; int name; } ;
struct archive_entry {int dummy; } ;
typedef scalar_t__ int64_t ;
typedef int dev_t ;
struct TYPE_2__ {scalar_t__* offset; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 scalar_t__ archive_entry_copy_gname_l (struct archive_entry*,int ,int,int ) ;
 scalar_t__ archive_entry_copy_pathname_l (struct archive_entry*,int ,int,int ) ;
 scalar_t__ archive_entry_copy_uname_l (struct archive_entry*,int ,int,int ) ;
 int archive_entry_set_atime (struct archive_entry*,scalar_t__,int ) ;
 int archive_entry_set_ctime (struct archive_entry*,scalar_t__,int ) ;
 int archive_entry_set_rdev (struct archive_entry*,int ) ;
 int archive_entry_set_rdevmajor (struct archive_entry*,int ) ;
 int archive_entry_set_rdevminor (struct archive_entry*,int ) ;
 int archive_entry_set_size (struct archive_entry*,scalar_t__) ;
 int gnu_sparse_old_read (struct archive_read*,struct tar*,struct archive_entry_header_gnutar const*,size_t*) ;
 int header_common (struct archive_read*,struct tar*,struct archive_entry*,void const*) ;
 int set_conversion_failed_error (struct archive_read*,int ,char*) ;
 scalar_t__ tar_atol (scalar_t__*,int) ;

__attribute__((used)) static int
header_gnutar(struct archive_read *a, struct tar *tar,
    struct archive_entry *entry, const void *h, size_t *unconsumed)
{
 const struct archive_entry_header_gnutar *header;
 int64_t t;
 int err = ARCHIVE_OK;
 err = header_common(a, tar, entry, h);
 if (err == ARCHIVE_FATAL)
  return (err);


 header = (const struct archive_entry_header_gnutar *)h;
 if (archive_entry_copy_pathname_l(entry,
     header->name, sizeof(header->name), tar->sconv) != 0) {
  err = set_conversion_failed_error(a, tar->sconv, "Pathname");
  if (err == ARCHIVE_FATAL)
   return (err);
 }





 if (archive_entry_copy_uname_l(entry,
     header->uname, sizeof(header->uname), tar->sconv) != 0) {
  err = set_conversion_failed_error(a, tar->sconv, "Uname");
  if (err == ARCHIVE_FATAL)
   return (err);
 }

 if (archive_entry_copy_gname_l(entry,
     header->gname, sizeof(header->gname), tar->sconv) != 0) {
  err = set_conversion_failed_error(a, tar->sconv, "Gname");
  if (err == ARCHIVE_FATAL)
   return (err);
 }


 if (header->typeflag[0] == '3' || header->typeflag[0] == '4') {
  archive_entry_set_rdevmajor(entry, (dev_t)
      tar_atol(header->rdevmajor, sizeof(header->rdevmajor)));
  archive_entry_set_rdevminor(entry, (dev_t)
      tar_atol(header->rdevminor, sizeof(header->rdevminor)));
 } else
  archive_entry_set_rdev(entry, 0);

 tar->entry_padding = 0x1ff & (-tar->entry_bytes_remaining);


 t = tar_atol(header->atime, sizeof(header->atime));
 if (t > 0)
  archive_entry_set_atime(entry, t, 0);
 t = tar_atol(header->ctime, sizeof(header->ctime));
 if (t > 0)
  archive_entry_set_ctime(entry, t, 0);

 if (header->realsize[0] != 0) {
  tar->realsize
      = tar_atol(header->realsize, sizeof(header->realsize));
  archive_entry_set_size(entry, tar->realsize);
  tar->realsize_override = 1;
 }

 if (header->sparse[0].offset[0] != 0) {
  if (gnu_sparse_old_read(a, tar, header, unconsumed)
      != ARCHIVE_OK)
   return (ARCHIVE_FATAL);
 } else {
  if (header->isextended[0] != 0) {

  }
 }

 return (err);
}
