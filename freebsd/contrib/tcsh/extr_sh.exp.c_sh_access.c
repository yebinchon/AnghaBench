
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; scalar_t__ st_uid; scalar_t__ st_gid; } ;
typedef scalar_t__ GETGROUPS_T ;
typedef int Char ;


 long NGROUPS_MAX ;
 scalar_t__ S_ISDIR (int) ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;


 int _SC_NGROUPS_MAX ;
 int abort () ;
 scalar_t__ access (char*,int) ;
 scalar_t__ egid ;
 scalar_t__ euid ;
 long getgroups (int,scalar_t__*) ;
 char* short2str (int const*) ;
 int stat (char*,struct stat*) ;
 long sysconf (int ) ;
 int xfree (scalar_t__*) ;
 scalar_t__* xmalloc (long) ;

__attribute__((used)) static int
sh_access(const Char *fname, int mode)
{



    char *name = short2str(fname);

    if (*name == '\0')
 return 1;


    return access(name, mode);
}
