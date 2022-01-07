
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int noatime; int filetype; int atime_nsec; int atime; int mtime_nsec; int mtime; } ;
struct tree {int descend; int tree_errno; int symlink_mode; int initial_filesystem_id; int current_filesystem_id; scalar_t__ entry_fd; TYPE_2__* current_filesystem; TYPE_1__ restore_time; int depth; } ;
struct stat {int st_flags; int st_mode; int st_dev; } ;
struct archive_string {char* s; int length; } ;
struct TYPE_13__ {void* state; } ;
struct archive_read_disk {int flags; char symlink_mode; int follow_symlinks; TYPE_3__ archive; int metadata_filter_data; int (* metadata_filter_func ) (TYPE_3__*,int ,struct archive_entry*) ;int excluded_cb_data; int (* excluded_cb_func ) (TYPE_3__*,int ,struct archive_entry*) ;scalar_t__ matching; } ;
struct archive_entry {int dummy; } ;
struct TYPE_12__ {int noatime; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_READDISK_HONOR_NODUMP ;
 int ARCHIVE_READDISK_MAC_COPYFILE ;
 int ARCHIVE_READDISK_NO_TRAVERSE_MOUNTS ;
 int ARCHIVE_RETRY ;
 void* ARCHIVE_STATE_FATAL ;
 int ARCHIVE_WARN ;
 int ENOENT ;
 int EXT2_IOC_GETFLAGS ;
 int EXT2_NODUMP_FL ;
 int FS_IOC_GETFLAGS ;
 int FS_NODUMP_FL ;
 int O_CLOEXEC ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;





 int UF_NODUMP ;
 int __archive_ensure_cloexec_flag (scalar_t__) ;
 int archive_entry_atime (struct archive_entry*) ;
 int archive_entry_atime_nsec (struct archive_entry*) ;
 int archive_entry_copy_gname (struct archive_entry*,char const*) ;
 int archive_entry_copy_pathname (struct archive_entry*,char*) ;
 int archive_entry_copy_sourcepath (struct archive_entry*,int ) ;
 int archive_entry_copy_stat (struct archive_entry*,struct stat const*) ;
 int archive_entry_copy_uname (struct archive_entry*,char const*) ;
 int archive_entry_filetype (struct archive_entry*) ;
 int archive_entry_gid (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 int archive_entry_mtime_nsec (struct archive_entry*) ;
 int archive_entry_uid (struct archive_entry*) ;
 char* archive_error_string (scalar_t__) ;
 int archive_match_owner_excluded (scalar_t__,struct archive_entry*) ;
 int archive_match_path_excluded (scalar_t__,struct archive_entry*) ;
 int archive_match_time_excluded (scalar_t__,struct archive_entry*) ;
 int archive_read_disk_entry_from_file (TYPE_3__*,struct archive_entry*,scalar_t__,struct stat const*) ;
 char* archive_read_disk_gname (TYPE_3__*,int ) ;
 char* archive_read_disk_uname (TYPE_3__*,int ) ;
 int archive_set_error (TYPE_3__*,int,char*,char*) ;
 int archive_string_empty (struct archive_string*) ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;
 int archive_string_sprintf (struct archive_string*,char*,char*) ;
 int errno ;
 int ioctl (scalar_t__,int ,int ,int*) ;
 scalar_t__ open_on_current_dir (struct tree*,int ,int) ;
 char* strrchr (char*,char) ;
 int stub1 (TYPE_3__*,int ,struct archive_entry*) ;
 int stub2 (TYPE_3__*,int ,struct archive_entry*) ;
 int stub3 (TYPE_3__*,int ,struct archive_entry*) ;
 int stub4 (TYPE_3__*,int ,struct archive_entry*) ;
 int tree_current_access_path (struct tree*) ;
 int tree_current_is_dir (struct tree*) ;
 int tree_current_is_physical_dir (struct tree*) ;
 struct stat* tree_current_lstat (struct tree*) ;
 char* tree_current_path (struct tree*) ;
 struct stat* tree_current_stat (struct tree*) ;
 int tree_enter_initial_dir (struct tree*) ;
 int tree_next (struct tree*) ;
 int tree_target_is_same_as_parent (struct tree*,struct stat const*) ;
 int update_current_filesystem (struct archive_read_disk*,int ) ;

__attribute__((used)) static int
next_entry(struct archive_read_disk *a, struct tree *t,
    struct archive_entry *entry)
{
 const struct stat *st;
 const struct stat *lst;
 const char *name;
 int delayed, delayed_errno, descend, r;
 struct archive_string delayed_str;

 delayed = ARCHIVE_OK;
 delayed_errno = 0;
 archive_string_init(&delayed_str);

 st = ((void*)0);
 lst = ((void*)0);
 t->descend = 0;
 do {
  switch (tree_next(t)) {
  case 131:
   archive_set_error(&a->archive, t->tree_errno,
       "%s: Unable to continue traversing directory tree",
       tree_current_path(t));
   a->archive.state = ARCHIVE_STATE_FATAL;
   tree_enter_initial_dir(t);
   return (ARCHIVE_FATAL);
  case 132:
   archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
       "%s: Couldn't visit directory",
       tree_current_path(t));
   tree_enter_initial_dir(t);
   return (ARCHIVE_FAILED);
  case 0:
   tree_enter_initial_dir(t);
   return (ARCHIVE_EOF);
  case 129:
  case 130:
   break;
  case 128:
   lst = tree_current_lstat(t);
   if (lst == ((void*)0)) {
       if (errno == ENOENT && t->depth > 0) {
    delayed = ARCHIVE_WARN;
    delayed_errno = errno;
    if (delayed_str.length == 0) {
     archive_string_sprintf(&delayed_str,
         "%s", tree_current_path(t));
    } else {
     archive_string_sprintf(&delayed_str,
         " %s", tree_current_path(t));
    }
       } else {
    archive_set_error(&a->archive, errno,
        "%s: Cannot stat",
        tree_current_path(t));
    tree_enter_initial_dir(t);
    return (ARCHIVE_FAILED);
       }
   }
   break;
  }
 } while (lst == ((void*)0));
 archive_entry_copy_pathname(entry, tree_current_path(t));



 if (a->matching) {
  r = archive_match_path_excluded(a->matching, entry);
  if (r < 0) {
   archive_set_error(&(a->archive), errno,
       "Failed : %s", archive_error_string(a->matching));
   return (r);
  }
  if (r) {
   if (a->excluded_cb_func)
    a->excluded_cb_func(&(a->archive),
        a->excluded_cb_data, entry);
   return (ARCHIVE_RETRY);
  }
 }




 switch(t->symlink_mode) {
 case 'H':

  t->symlink_mode = 'P';


 case 'L':

  descend = tree_current_is_dir(t);

  a->symlink_mode = 'L';
  a->follow_symlinks = 1;

  st = tree_current_stat(t);
  if (st != ((void*)0) && !tree_target_is_same_as_parent(t, st))
   break;



 default:

  descend = tree_current_is_physical_dir(t);

  a->symlink_mode = 'P';
  a->follow_symlinks = 0;

  st = lst;
  break;
 }

 if (update_current_filesystem(a, st->st_dev) != ARCHIVE_OK) {
  a->archive.state = ARCHIVE_STATE_FATAL;
  tree_enter_initial_dir(t);
  return (ARCHIVE_FATAL);
 }
 if (t->initial_filesystem_id == -1)
  t->initial_filesystem_id = t->current_filesystem_id;
 if (a->flags & ARCHIVE_READDISK_NO_TRAVERSE_MOUNTS) {
  if (t->initial_filesystem_id != t->current_filesystem_id)
   descend = 0;
 }
 t->descend = descend;





 if (a->flags & ARCHIVE_READDISK_HONOR_NODUMP) {
 }

 archive_entry_copy_stat(entry, st);




 t->restore_time.mtime = archive_entry_mtime(entry);
 t->restore_time.mtime_nsec = archive_entry_mtime_nsec(entry);
 t->restore_time.atime = archive_entry_atime(entry);
 t->restore_time.atime_nsec = archive_entry_atime_nsec(entry);
 t->restore_time.filetype = archive_entry_filetype(entry);
 t->restore_time.noatime = t->current_filesystem->noatime;




 if (a->matching) {
  r = archive_match_time_excluded(a->matching, entry);
  if (r < 0) {
   archive_set_error(&(a->archive), errno,
       "Failed : %s", archive_error_string(a->matching));
   return (r);
  }
  if (r) {
   if (a->excluded_cb_func)
    a->excluded_cb_func(&(a->archive),
        a->excluded_cb_data, entry);
   return (ARCHIVE_RETRY);
  }
 }


 name = archive_read_disk_uname(&(a->archive), archive_entry_uid(entry));
 if (name != ((void*)0))
  archive_entry_copy_uname(entry, name);
 name = archive_read_disk_gname(&(a->archive), archive_entry_gid(entry));
 if (name != ((void*)0))
  archive_entry_copy_gname(entry, name);




 if (a->matching) {
  r = archive_match_owner_excluded(a->matching, entry);
  if (r < 0) {
   archive_set_error(&(a->archive), errno,
       "Failed : %s", archive_error_string(a->matching));
   return (r);
  }
  if (r) {
   if (a->excluded_cb_func)
    a->excluded_cb_func(&(a->archive),
        a->excluded_cb_data, entry);
   return (ARCHIVE_RETRY);
  }
 }




 if (a->metadata_filter_func) {
  if (!a->metadata_filter_func(&(a->archive),
      a->metadata_filter_data, entry))
   return (ARCHIVE_RETRY);
 }




 archive_entry_copy_sourcepath(entry, tree_current_access_path(t));
 r = archive_read_disk_entry_from_file(&(a->archive), entry,
  t->entry_fd, st);

 if (r == ARCHIVE_OK) {
  r = delayed;
  if (r != ARCHIVE_OK) {
   archive_string_sprintf(&delayed_str, ": %s",
       "File removed before we read it");
   archive_set_error(&(a->archive), delayed_errno,
       "%s", delayed_str.s);
  }
 }
 if (!archive_string_empty(&delayed_str))
  archive_string_free(&delayed_str);

 return (r);
}
