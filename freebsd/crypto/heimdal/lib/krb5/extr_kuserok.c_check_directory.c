
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; scalar_t__ st_uid; scalar_t__ st_dev; scalar_t__ st_ino; } ;
struct passwd {scalar_t__ pw_uid; } ;
struct dirent {char* d_name; } ;
typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef scalar_t__ krb5_boolean ;
typedef int filename ;
typedef int DIR ;


 scalar_t__ EACCES ;
 scalar_t__ ENOTDIR ;
 scalar_t__ FALSE ;
 int MAXPATHLEN ;
 int S_ISDIR (int) ;
 int S_IWGRP ;
 int S_IWOTH ;
 scalar_t__ TRUE ;
 scalar_t__ check_one_file (int ,char*,struct passwd*,int ,scalar_t__*) ;
 int closedir (int *) ;
 int dirfd (int *) ;
 scalar_t__ errno ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ lstat (char const*,struct stat*) ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static krb5_error_code
check_directory(krb5_context context,
  const char *dirname,
  struct passwd *pwd,
  krb5_principal principal,
  krb5_boolean *result)
{
    DIR *d;
    struct dirent *dent;
    char filename[MAXPATHLEN];
    krb5_error_code ret = 0;
    struct stat st;

    *result = FALSE;

    if(lstat(dirname, &st) < 0)
 return errno;

    if (!S_ISDIR(st.st_mode))
 return ENOTDIR;

    if (st.st_uid != pwd->pw_uid && st.st_uid != 0)
 return EACCES;
    if ((st.st_mode & (S_IWGRP | S_IWOTH)) != 0)
 return EACCES;

    if((d = opendir(dirname)) == ((void*)0))
 return errno;

    {
 int fd;
 struct stat st2;

 fd = dirfd(d);
 if(fstat(fd, &st2) < 0) {
     closedir(d);
     return errno;
 }
 if(st.st_dev != st2.st_dev || st.st_ino != st2.st_ino) {
     closedir(d);
     return EACCES;
 }
    }

    while((dent = readdir(d)) != ((void*)0)) {
 if(strcmp(dent->d_name, ".") == 0 ||
    strcmp(dent->d_name, "..") == 0 ||
    dent->d_name[0] == '#' ||
    dent->d_name[strlen(dent->d_name) - 1] == '~')
     continue;
 snprintf(filename, sizeof(filename), "%s/%s", dirname, dent->d_name);
 ret = check_one_file(context, filename, pwd, principal, result);
 if(ret == 0 && *result == TRUE)
     break;
 ret = 0;
    }
    closedir(d);
    return ret;
}
