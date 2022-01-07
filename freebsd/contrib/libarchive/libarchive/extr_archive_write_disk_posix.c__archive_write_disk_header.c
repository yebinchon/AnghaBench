
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct fixup_entry {int fixup; int mode; size_t mac_metadata_size; int * mac_metadata; int acl; scalar_t__ mtime_nanos; scalar_t__ birthtime_nanos; int mtime; int birthtime; scalar_t__ atime_nanos; int atime; } ;
struct TYPE_7__ {int state; } ;
struct TYPE_6__ {char* s; } ;
struct archive_write_disk {int deferred; int fd; int restore_pwd; int mode; int filesize; char* name; int user_umask; int todo; int flags; unsigned int decmpfs_block_count; TYPE_2__ archive; struct archive_entry* entry; int start_time; TYPE_1__ _name_data; int user_uid; int uid; scalar_t__ offset; scalar_t__ fd_offset; int * current_fixup; int * pst; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 scalar_t__ AE_IFDIR ;
 int AE_IFMT ;
 int AE_IFREG ;
 int ARCHIVE_ENTRY_ACL_TYPE_NFS4 ;
 int ARCHIVE_EXTRACT_ACL ;
 int ARCHIVE_EXTRACT_FFLAGS ;
 int ARCHIVE_EXTRACT_HFS_COMPRESSION_FORCED ;
 int ARCHIVE_EXTRACT_MAC_METADATA ;
 int ARCHIVE_EXTRACT_NO_HFS_COMPRESSION ;
 int ARCHIVE_EXTRACT_OWNER ;
 int ARCHIVE_EXTRACT_PERM ;
 int ARCHIVE_EXTRACT_SECURE_SYMLINKS ;
 int ARCHIVE_EXTRACT_TIME ;
 int ARCHIVE_EXTRACT_XATTR ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_DATA ;
 int ARCHIVE_STATE_HEADER ;
 int ARCHIVE_WARN ;
 int ARCHIVE_WRITE_DISK_MAGIC ;
 int S_ISGID ;
 int S_ISUID ;
 int S_ISVTX ;
 int TODO_ACLS ;
 int TODO_APPLEDOUBLE ;
 int TODO_FFLAGS ;
 int TODO_HFS_COMPRESSION ;
 int TODO_MAC_METADATA ;
 int TODO_MODE ;
 int TODO_MODE_BASE ;
 int TODO_MODE_FORCE ;
 int TODO_OWNER ;
 int TODO_SGID ;
 int TODO_SGID_CHECK ;
 int TODO_SUID ;
 int TODO_SUID_CHECK ;
 int TODO_TIMES ;
 int TODO_XATTR ;
 unsigned long UF_COMPRESSED ;
 int _archive_write_disk_finish_entry (TYPE_2__*) ;
 int archive_acl_copy (int *,int ) ;
 int archive_check_magic (TYPE_2__*,int ,int,char*) ;
 int archive_clear_error (TYPE_2__*) ;
 int archive_entry_acl (struct archive_entry*) ;
 int archive_entry_acl_types (struct archive_entry*) ;
 int archive_entry_atime (struct archive_entry*) ;
 scalar_t__ archive_entry_atime_is_set (struct archive_entry*) ;
 scalar_t__ archive_entry_atime_nsec (struct archive_entry*) ;
 int archive_entry_birthtime (struct archive_entry*) ;
 scalar_t__ archive_entry_birthtime_is_set (struct archive_entry*) ;
 scalar_t__ archive_entry_birthtime_nsec (struct archive_entry*) ;
 struct archive_entry* archive_entry_clone (struct archive_entry*) ;
 int archive_entry_fflags (struct archive_entry*,unsigned long*,unsigned long*) ;
 scalar_t__ archive_entry_filetype (struct archive_entry*) ;
 int archive_entry_free (struct archive_entry*) ;
 int * archive_entry_mac_metadata (struct archive_entry*,size_t*) ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 scalar_t__ archive_entry_mtime_is_set (struct archive_entry*) ;
 scalar_t__ archive_entry_mtime_nsec (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_set_size (struct archive_entry*,int ) ;
 int archive_entry_size (struct archive_entry*) ;
 scalar_t__ archive_entry_size_is_set (struct archive_entry*) ;
 int archive_entry_xattr_next (struct archive_entry*,char const**,void const**,size_t*) ;
 int archive_entry_xattr_reset (struct archive_entry*) ;
 int archive_set_error (TYPE_2__*,int ,char*) ;
 int archive_strcpy (TYPE_1__*,int ) ;
 int check_symlinks (struct archive_write_disk*) ;
 int cleanup_pathname (struct archive_write_disk*) ;
 int close (int) ;
 struct fixup_entry* current_fixup (struct archive_write_disk*,int ) ;
 int edit_deep_directories (struct archive_write_disk*) ;
 int errno ;
 int fchdir (int) ;
 scalar_t__ fchflags (int,unsigned long) ;
 int * malloc (size_t) ;
 int memcpy (int *,void const*,size_t) ;
 int restore_entry (struct archive_write_disk*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strrchr (char*,char) ;
 int umask (int) ;

__attribute__((used)) static int
_archive_write_disk_header(struct archive *_a, struct archive_entry *entry)
{
 struct archive_write_disk *a = (struct archive_write_disk *)_a;
 struct fixup_entry *fe;
 int ret, r;

 archive_check_magic(&a->archive, ARCHIVE_WRITE_DISK_MAGIC,
     ARCHIVE_STATE_HEADER | ARCHIVE_STATE_DATA,
     "archive_write_disk_header");
 archive_clear_error(&a->archive);
 if (a->archive.state & ARCHIVE_STATE_DATA) {
  r = _archive_write_disk_finish_entry(&a->archive);
  if (r == ARCHIVE_FATAL)
   return (r);
 }


 a->pst = ((void*)0);
 a->current_fixup = ((void*)0);
 a->deferred = 0;
 if (a->entry) {
  archive_entry_free(a->entry);
  a->entry = ((void*)0);
 }
 a->entry = archive_entry_clone(entry);
 a->fd = -1;
 a->fd_offset = 0;
 a->offset = 0;
 a->restore_pwd = -1;
 a->uid = a->user_uid;
 a->mode = archive_entry_mode(a->entry);
 if (archive_entry_size_is_set(a->entry))
  a->filesize = archive_entry_size(a->entry);
 else
  a->filesize = -1;
 archive_strcpy(&(a->_name_data), archive_entry_pathname(a->entry));
 a->name = a->_name_data.s;
 archive_clear_error(&a->archive);






 ret = cleanup_pathname(a);
 if (ret != ARCHIVE_OK)
  return (ret);







 umask(a->user_umask = umask(0));


 a->todo = TODO_MODE_BASE;
 if (a->flags & ARCHIVE_EXTRACT_PERM) {
  a->todo |= TODO_MODE_FORCE;
  if (a->mode & S_ISGID)
   a->todo |= TODO_SGID | TODO_SGID_CHECK;




  if (a->mode & S_ISUID)
   a->todo |= TODO_SUID | TODO_SUID_CHECK;
 } else {




  a->mode &= ~S_ISUID;
  a->mode &= ~S_ISGID;
  a->mode &= ~S_ISVTX;
  a->mode &= ~a->user_umask;
 }
 if (a->flags & ARCHIVE_EXTRACT_OWNER)
  a->todo |= TODO_OWNER;
 if (a->flags & ARCHIVE_EXTRACT_TIME)
  a->todo |= TODO_TIMES;
 if (a->flags & ARCHIVE_EXTRACT_ACL) {
  if (archive_entry_filetype(a->entry) == AE_IFDIR)
   a->deferred |= TODO_ACLS;
  else
   a->todo |= TODO_ACLS;



 }
 if (a->flags & ARCHIVE_EXTRACT_MAC_METADATA) {
  if (archive_entry_filetype(a->entry) == AE_IFDIR)
   a->deferred |= TODO_MAC_METADATA;
  else
   a->todo |= TODO_MAC_METADATA;
 }
 if (a->flags & ARCHIVE_EXTRACT_XATTR) {
  a->todo |= TODO_XATTR;
 }
 if (a->flags & ARCHIVE_EXTRACT_FFLAGS)
  a->todo |= TODO_FFLAGS;
 if (a->flags & ARCHIVE_EXTRACT_SECURE_SYMLINKS) {
  ret = check_symlinks(a);
  if (ret != ARCHIVE_OK)
   return (ret);
 }





 ret = restore_entry(a);
 if (a->deferred & TODO_MODE) {
  fe = current_fixup(a, archive_entry_pathname(entry));
  if (fe == ((void*)0))
   return (ARCHIVE_FATAL);
  fe->fixup |= TODO_MODE_BASE;
  fe->mode = a->mode;
 }

 if ((a->deferred & TODO_TIMES)
  && (archive_entry_mtime_is_set(entry)
      || archive_entry_atime_is_set(entry))) {
  fe = current_fixup(a, archive_entry_pathname(entry));
  if (fe == ((void*)0))
   return (ARCHIVE_FATAL);
  fe->mode = a->mode;
  fe->fixup |= TODO_TIMES;
  if (archive_entry_atime_is_set(entry)) {
   fe->atime = archive_entry_atime(entry);
   fe->atime_nanos = archive_entry_atime_nsec(entry);
  } else {

   fe->atime = a->start_time;
   fe->atime_nanos = 0;
  }
  if (archive_entry_mtime_is_set(entry)) {
   fe->mtime = archive_entry_mtime(entry);
   fe->mtime_nanos = archive_entry_mtime_nsec(entry);
  } else {

   fe->mtime = a->start_time;
   fe->mtime_nanos = 0;
  }
  if (archive_entry_birthtime_is_set(entry)) {
   fe->birthtime = archive_entry_birthtime(entry);
   fe->birthtime_nanos = archive_entry_birthtime_nsec(
       entry);
  } else {

   fe->birthtime = fe->mtime;
   fe->birthtime_nanos = fe->mtime_nanos;
  }
 }

 if (a->deferred & TODO_ACLS) {
  fe = current_fixup(a, archive_entry_pathname(entry));
  if (fe == ((void*)0))
   return (ARCHIVE_FATAL);
  fe->fixup |= TODO_ACLS;
  archive_acl_copy(&fe->acl, archive_entry_acl(entry));
 }

 if (a->deferred & TODO_MAC_METADATA) {
  const void *metadata;
  size_t metadata_size;
  metadata = archive_entry_mac_metadata(a->entry, &metadata_size);
  if (metadata != ((void*)0) && metadata_size > 0) {
   fe = current_fixup(a, archive_entry_pathname(entry));
   if (fe == ((void*)0))
    return (ARCHIVE_FATAL);
   fe->mac_metadata = malloc(metadata_size);
   if (fe->mac_metadata != ((void*)0)) {
    memcpy(fe->mac_metadata, metadata,
        metadata_size);
    fe->mac_metadata_size = metadata_size;
    fe->fixup |= TODO_MAC_METADATA;
   }
  }
 }

 if (a->deferred & TODO_FFLAGS) {
  fe = current_fixup(a, archive_entry_pathname(entry));
  if (fe == ((void*)0))
   return (ARCHIVE_FATAL);
  fe->fixup |= TODO_FFLAGS;

 }


 if (ret >= ARCHIVE_WARN)
  a->archive.state = ARCHIVE_STATE_DATA;




 if (a->fd < 0) {
  archive_entry_set_size(entry, 0);
  a->filesize = 0;
 }

 return (ret);
}
