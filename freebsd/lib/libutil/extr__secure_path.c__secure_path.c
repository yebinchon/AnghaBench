
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct stat {int st_mode; scalar_t__ st_uid; scalar_t__ st_gid; } ;
typedef scalar_t__ gid_t ;


 scalar_t__ ENOENT ;
 int LOG_ERR ;
 int S_ISREG (int) ;
 int S_IWGRP ;
 int S_IWOTH ;
 scalar_t__ errno ;
 scalar_t__ lstat (char const*,struct stat*) ;
 int syslog (int ,char const*,char*,char const*,scalar_t__) ;

int
_secure_path(const char *path, uid_t uid, gid_t gid)
{
    int r = -1;
    struct stat sb;
    const char *msg = ((void*)0);

    if (lstat(path, &sb) < 0) {
 if (errno == ENOENT)
     r = -2;
 else
     msg = "%s: cannot stat %s: %m";
    }
    else if (!S_ISREG(sb.st_mode))
     msg = "%s: %s is not a regular file";
    else if (sb.st_mode & S_IWOTH)
     msg = "%s: %s is world writable";
    else if ((int)uid != -1 && sb.st_uid != uid && sb.st_uid != 0) {
     if (uid == 0)
      msg = "%s: %s is not owned by root";
     else
      msg = "%s: %s is not owned by uid %d";
    } else if ((int)gid != -1 && sb.st_gid != gid && (sb.st_mode & S_IWGRP))
     msg = "%s: %s is group writeable by non-authorised groups";
    else
     r = 0;
    if (msg != ((void*)0))
 syslog(LOG_ERR, msg, "_secure_path", path, uid);
    return r;
}
