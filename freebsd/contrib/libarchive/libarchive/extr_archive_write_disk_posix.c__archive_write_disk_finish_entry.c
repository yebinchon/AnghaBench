
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int state; } ;
struct TYPE_8__ {scalar_t__ st_size; } ;
struct archive_write_disk {int fd; scalar_t__ filesize; scalar_t__ fd_offset; int todo; int file_remaining_bytes; scalar_t__ user_uid; TYPE_2__ archive; int * entry; int mode; int gid; int uid; int name; int * pst; TYPE_1__ st; } ;
struct archive {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int null_d ;


 int ARCHIVE_EOF ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_DATA ;
 int ARCHIVE_STATE_HEADER ;
 int ARCHIVE_WRITE_DISK_MAGIC ;
 int SEEK_SET ;
 int TODO_ACLS ;
 int TODO_APPLEDOUBLE ;
 int TODO_FFLAGS ;
 int TODO_HFS_COMPRESSION ;
 int TODO_MAC_METADATA ;
 int TODO_MODE ;
 int TODO_OWNER ;
 int TODO_SGID ;
 int TODO_SUID ;
 int TODO_TIMES ;
 int TODO_XATTR ;
 int archive_check_magic (TYPE_2__*,int ,int,char*) ;
 int archive_clear_error (TYPE_2__*) ;
 int archive_entry_acl (int *) ;
 int archive_entry_free (int *) ;
 int archive_entry_gid (int *) ;
 int archive_entry_gname (int *) ;
 void* archive_entry_mac_metadata (int *,size_t*) ;
 int archive_entry_mode (int *) ;
 int archive_entry_pathname (int *) ;
 int archive_entry_uid (int *) ;
 int archive_entry_uname (int *) ;
 int archive_set_error (TYPE_2__*,int ,char*) ;
 int archive_write_disk_gid (TYPE_2__*,int ,int ) ;
 int archive_write_disk_set_acls (TYPE_2__*,int,int ,int ,int ) ;
 int archive_write_disk_uid (TYPE_2__*,int ,int ) ;
 int close (int) ;
 int errno ;
 int fixup_appledouble (struct archive_write_disk*,int ) ;
 int ftruncate (int,scalar_t__) ;
 scalar_t__ hfs_write_data_block (struct archive_write_disk*,char*,int) ;
 int lazy_stat (struct archive_write_disk*) ;
 scalar_t__ lseek (int,scalar_t__,int ) ;
 int memset (char*,int ,int) ;
 int set_fflags (struct archive_write_disk*) ;
 int set_mac_metadata (struct archive_write_disk*,int ,void const*,size_t) ;
 int set_mode (struct archive_write_disk*,int ) ;
 int set_ownership (struct archive_write_disk*) ;
 int set_times_from_entry (struct archive_write_disk*) ;
 int set_xattrs (struct archive_write_disk*) ;
 scalar_t__ write (int,char const*,int) ;

__attribute__((used)) static int
_archive_write_disk_finish_entry(struct archive *_a)
{
 struct archive_write_disk *a = (struct archive_write_disk *)_a;
 int ret = ARCHIVE_OK;

 archive_check_magic(&a->archive, ARCHIVE_WRITE_DISK_MAGIC,
     ARCHIVE_STATE_HEADER | ARCHIVE_STATE_DATA,
     "archive_write_finish_entry");
 if (a->archive.state & ARCHIVE_STATE_HEADER)
  return (ARCHIVE_OK);
 archive_clear_error(&a->archive);


 if (a->fd < 0) {

 } else if (a->filesize < 0) {

 } else if (a->fd_offset == a->filesize) {
 } else {
  a->pst = ((void*)0);
  if ((ret = lazy_stat(a)) != ARCHIVE_OK)
   return (ret);


  if (a->st.st_size < a->filesize) {
   const char nul = '\0';
   if (lseek(a->fd, a->filesize - 1, SEEK_SET) < 0) {
    archive_set_error(&a->archive, errno,
        "Seek failed");
    return (ARCHIVE_FATAL);
   }
   if (write(a->fd, &nul, 1) < 0) {
    archive_set_error(&a->archive, errno,
        "Write to restore size failed");
    return (ARCHIVE_FATAL);
   }
   a->pst = ((void*)0);
  }
 }
 if (a->todo & TODO_APPLEDOUBLE) {
  int r2 = fixup_appledouble(a, a->name);
  if (r2 == ARCHIVE_EOF) {



   goto finish_metadata;
  }
  if (r2 < ret) ret = r2;
 }





 if (a->todo & (TODO_OWNER | TODO_SUID | TODO_SGID)) {
  a->uid = archive_write_disk_uid(&a->archive,
      archive_entry_uname(a->entry),
      archive_entry_uid(a->entry));
 }


 if (a->todo & (TODO_OWNER | TODO_SGID | TODO_SUID)) {
  a->gid = archive_write_disk_gid(&a->archive,
      archive_entry_gname(a->entry),
      archive_entry_gid(a->entry));
  }






 if (a->todo & TODO_OWNER) {
  int r2 = set_ownership(a);
  if (r2 < ret) ret = r2;
 }
 if (a->user_uid != 0 &&
     (a->todo & TODO_XATTR)) {
  int r2 = set_xattrs(a);
  if (r2 < ret) ret = r2;
 }





 if (a->todo & TODO_MODE) {
  int r2 = set_mode(a, a->mode);
  if (r2 < ret) ret = r2;
 }







 if (a->user_uid == 0 &&
     (a->todo & TODO_XATTR)) {
  int r2 = set_xattrs(a);
  if (r2 < ret) ret = r2;
 }





 if (a->todo & TODO_FFLAGS) {
  int r2 = set_fflags(a);
  if (r2 < ret) ret = r2;
 }





 if (a->todo & TODO_TIMES) {
  int r2 = set_times_from_entry(a);
  if (r2 < ret) ret = r2;
 }




 if (a->todo & TODO_MAC_METADATA) {
  const void *metadata;
  size_t metadata_size;
  metadata = archive_entry_mac_metadata(a->entry, &metadata_size);
  if (metadata != ((void*)0) && metadata_size > 0) {
   int r2 = set_mac_metadata(a, archive_entry_pathname(
       a->entry), metadata, metadata_size);
   if (r2 < ret) ret = r2;
  }
 }





 if (a->todo & TODO_ACLS) {
  int r2;
  r2 = archive_write_disk_set_acls(&a->archive, a->fd,
      archive_entry_pathname(a->entry),
      archive_entry_acl(a->entry),
      archive_entry_mode(a->entry));
  if (r2 < ret) ret = r2;
 }

finish_metadata:

 if (a->fd >= 0) {
  close(a->fd);
  a->fd = -1;
 }

 archive_entry_free(a->entry);
 a->entry = ((void*)0);
 a->archive.state = ARCHIVE_STATE_HEADER;
 return (ret);
}
