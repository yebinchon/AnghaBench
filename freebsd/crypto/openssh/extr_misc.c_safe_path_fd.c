
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct passwd {int pw_uid; int pw_dir; } ;


 int errno ;
 scalar_t__ fstat (int,struct stat*) ;
 int safe_path (char const*,struct stat*,int ,int ,char*,size_t) ;
 int snprintf (char*,size_t,char*,char const*,char*) ;
 char* strerror (int ) ;

int
safe_path_fd(int fd, const char *file, struct passwd *pw,
    char *err, size_t errlen)
{
 struct stat st;


 if (fstat(fd, &st) < 0) {
  snprintf(err, errlen, "cannot stat file %s: %s",
      file, strerror(errno));
  return -1;
 }
 return safe_path(file, &st, pw->pw_dir, pw->pw_uid, err, errlen);
}
