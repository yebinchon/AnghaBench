
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct archive_write_disk {int flags; scalar_t__ filesize; int todo; int deferred; scalar_t__ fd; int mode; int user_umask; scalar_t__ user_uid; int name; int entry; int archive; } ;
struct archive_string {int s; } ;
typedef int mode_t ;






 int AE_IFMT ;

 int ARCHIVE_EXTRACT_PERM ;
 int ARCHIVE_OK ;
 int EINVAL ;
 int EPERM ;
 int MAXIMUM_DIR_MODE ;
 int MINIMUM_DIR_MODE ;
 int O_BINARY ;
 int O_CLOEXEC ;
 int O_CREAT ;
 int O_EXCL ;
 int O_NOFOLLOW ;
 int O_TRUNC ;
 int O_WRONLY ;
 int S_IFBLK ;
 int S_IFCHR ;
 int TODO_HFS_COMPRESSION ;
 int TODO_MODE ;
 int TODO_TIMES ;
 int TODO_XATTR ;
 int __archive_ensure_cloexec_flag (scalar_t__) ;
 char* archive_entry_hardlink (int ) ;
 int archive_entry_rdev (int ) ;
 char* archive_entry_symlink (int ) ;
 int archive_set_error (int *,int,char*,int ) ;
 int archive_string_free (struct archive_string*) ;
 int archive_string_init (struct archive_string*) ;
 int check_symlinks_fsobj (char*,int*,struct archive_string*,int) ;
 int cleanup_pathname_fsobj (char*,int*,struct archive_string*,int) ;
 int errno ;
 int free (char*) ;
 int la_stat (int ,struct stat*) ;
 scalar_t__ link (char const*,int ) ;
 int lstat (int ,struct stat*) ;
 int mkdir (int ,int) ;
 int mkfifo (int ,int) ;
 int mknod (int ,int,int ) ;
 void* open (int ,int,...) ;
 char* strdup (char const*) ;
 scalar_t__ symlink (char const*,int ) ;

__attribute__((used)) static int
create_filesystem_object(struct archive_write_disk *a)
{

 const char *linkname;
 mode_t final_mode, mode;
 int r;

 char *linkname_copy;
 struct stat st;
 struct archive_string error_string;
 int error_number;



 linkname = archive_entry_hardlink(a->entry);
 if (linkname != ((void*)0)) {

  return (EPERM);
 }
 linkname = archive_entry_symlink(a->entry);
 if (linkname != ((void*)0)) {



  return (EPERM);

 }
 final_mode = a->mode & 07777;





 mode = final_mode & 0777 & ~a->user_umask;





 if (a->user_uid != 0 &&
     a->todo & (TODO_HFS_COMPRESSION | TODO_XATTR)) {
  mode |= 0200;
 }

 switch (a->mode & AE_IFMT) {
 default:


 case 128:
  a->fd = open(a->name,
      O_WRONLY | O_CREAT | O_EXCL | O_BINARY | O_CLOEXEC, mode);
  __archive_ensure_cloexec_flag(a->fd);
  r = (a->fd < 0);
  break;
 case 131:
  return (EINVAL);

 case 132:







  return (EINVAL);

 case 130:
  mode = (mode | MINIMUM_DIR_MODE) & MAXIMUM_DIR_MODE;
  r = mkdir(a->name, mode);
  if (r == 0) {

   a->deferred |= (a->todo & TODO_TIMES);
   a->todo &= ~TODO_TIMES;



   if ((mode != final_mode)
       || (a->flags & ARCHIVE_EXTRACT_PERM))
    a->deferred |= (a->todo & TODO_MODE);
   a->todo &= ~TODO_MODE;
  }
  break;
 case 129:






  return (EINVAL);

 }


 if (r)
  return (errno);


 if (mode == final_mode)
  a->todo &= ~TODO_MODE;
 return (0);
}
