
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_flags; int st_size; int st_mode; } ;
struct archive_read_disk {int flags; int (* open_on_current_dir ) (int *,char const*,int) ;scalar_t__ (* tree_enter_working_dir ) (int *) ;int archive; int * tree; int (* tree_current_dir_fd ) (int *) ;int follow_symlinks; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FAILED ;
 int ARCHIVE_READDISK_MAC_COPYFILE ;
 int ARCHIVE_READDISK_NO_ACL ;
 int ARCHIVE_READDISK_NO_FFLAGS ;
 int ARCHIVE_READDISK_NO_XATTR ;
 int ARCHIVE_READ_DISK_MAGIC ;
 int ARCHIVE_STATE_ANY ;
 int ENOMEM ;
 int EXT2_IOC_GETFLAGS ;
 int FS_IOC_GETFLAGS ;
 int O_CLOEXEC ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int __archive_ensure_cloexec_flag (int) ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_clear_error (struct archive*) ;
 int archive_entry_copy_gname (struct archive_entry*,char const*) ;
 int archive_entry_copy_stat (struct archive_entry*,struct stat const*) ;
 int archive_entry_copy_uname (struct archive_entry*,char const*) ;
 int archive_entry_gid (struct archive_entry*) ;
 char* archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_set_fflags (struct archive_entry*,int,int ) ;
 int archive_entry_set_symlink (struct archive_entry*,char*) ;
 char* archive_entry_sourcepath (struct archive_entry*) ;
 int archive_entry_uid (struct archive_entry*) ;
 int archive_read_disk_entry_setup_acls (struct archive_read_disk*,struct archive_entry*,int*) ;
 char* archive_read_disk_gname (struct archive*,int ) ;
 char* archive_read_disk_uname (struct archive*,int ) ;
 int archive_set_error (int *,int ,char*,...) ;
 int close (int) ;
 int errno ;
 int free (char*) ;
 scalar_t__ fstat (int,struct stat*) ;
 int ioctl (int,int ,int ,int*) ;
 scalar_t__ la_stat (char const*,struct stat*) ;
 scalar_t__ lstat (char const*,struct stat*) ;
 char* malloc (size_t) ;
 int open (char const*,int) ;
 int readlink (char const*,char*,size_t) ;
 int readlinkat (int ,char const*,char*,size_t) ;
 int setup_mac_metadata (struct archive_read_disk*,struct archive_entry*,int*) ;
 int setup_sparse (struct archive_read_disk*,struct archive_entry*,int*) ;
 int setup_xattrs (struct archive_read_disk*,struct archive_entry*,int*) ;
 int stub1 (int *,char const*,int) ;
 int stub2 (int *) ;
 scalar_t__ stub3 (int *) ;

int
archive_read_disk_entry_from_file(struct archive *_a,
    struct archive_entry *entry,
    int fd,
    const struct stat *st)
{
 struct archive_read_disk *a = (struct archive_read_disk *)_a;
 const char *path, *name;
 struct stat s;
 int initial_fd = fd;
 int r, r1;

 archive_check_magic(_a, ARCHIVE_READ_DISK_MAGIC, ARCHIVE_STATE_ANY,
  "archive_read_disk_entry_from_file");

 archive_clear_error(_a);
 path = archive_entry_sourcepath(entry);
 if (path == ((void*)0))
  path = archive_entry_pathname(entry);

 if (a->tree == ((void*)0)) {
  if (st == ((void*)0)) {
   if (la_stat(path, &s) != 0) {
    archive_set_error(&a->archive, errno,
        "Can't stat %s", path);
    return (ARCHIVE_FAILED);
   }
   st = &s;
  }
  archive_entry_copy_stat(entry, st);
 }


 name = archive_read_disk_uname(_a, archive_entry_uid(entry));
 if (name != ((void*)0))
  archive_entry_copy_uname(entry, name);
 name = archive_read_disk_gname(_a, archive_entry_gid(entry));
 if (name != ((void*)0))
  archive_entry_copy_gname(entry, name);
 r = 0;
 if ((a->flags & ARCHIVE_READDISK_NO_ACL) == 0)
  r = archive_read_disk_entry_setup_acls(a, entry, &fd);
 if ((a->flags & ARCHIVE_READDISK_NO_XATTR) == 0) {
  r1 = setup_xattrs(a, entry, &fd);
  if (r1 < r)
   r = r1;
 }
 if (a->flags & ARCHIVE_READDISK_MAC_COPYFILE) {
  r1 = setup_mac_metadata(a, entry, &fd);
  if (r1 < r)
   r = r1;
 }
 r1 = setup_sparse(a, entry, &fd);
 if (r1 < r)
  r = r1;


 if (initial_fd != fd)
  close(fd);
 return (r);
}
