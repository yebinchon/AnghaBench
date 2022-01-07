
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct archive_string {int dummy; } ;


 int ARCHIVE_EXTRACT_SECURE_SYMLINKS ;
 int ARCHIVE_EXTRACT_UNLINK ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int AT_FDCWD ;
 int AT_SYMLINK_NOFOLLOW ;
 scalar_t__ ENOENT ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int __archive_ensure_cloexec_flag (int) ;
 int chdir (char*) ;
 int close (int) ;
 scalar_t__ errno ;
 int error_number ;
 int error_string ;
 int fchdir (int) ;
 int fsobj_error (int*,struct archive_string*,scalar_t__,char*,char*) ;
 int fstatat (int,char*,struct stat*,int ) ;
 int la_opendirat (int,char*) ;
 int la_stat (char*,struct stat*) ;
 int lstat (char*,struct stat*) ;
 int unlink (char*) ;
 int unlinkat (int,char*,int ) ;

__attribute__((used)) static int
check_symlinks_fsobj(char *path, int *a_eno, struct archive_string *a_estr,
    int flags)
{



 (void)path;
 (void)error_number;
 (void)error_string;
 (void)flags;
 return (ARCHIVE_OK);
}
