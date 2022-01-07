
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct stat {int st_mode; scalar_t__ st_uid; } ;
typedef int buf ;


 int PATH_MAX ;
 int S_ISREG (int) ;
 char* dirname (char*) ;
 int errno ;
 int platform_sys_dir_uid (scalar_t__) ;
 int * realpath (char const*,char*) ;
 int snprintf (char*,size_t,char*,...) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strerror (int ) ;
 int strlcpy (char*,char*,int) ;

int
safe_path(const char *name, struct stat *stp, const char *pw_dir,
    uid_t uid, char *err, size_t errlen)
{
 char buf[PATH_MAX], homedir[PATH_MAX];
 char *cp;
 int comparehome = 0;
 struct stat st;

 if (realpath(name, buf) == ((void*)0)) {
  snprintf(err, errlen, "realpath %s failed: %s", name,
      strerror(errno));
  return -1;
 }
 if (pw_dir != ((void*)0) && realpath(pw_dir, homedir) != ((void*)0))
  comparehome = 1;

 if (!S_ISREG(stp->st_mode)) {
  snprintf(err, errlen, "%s is not a regular file", buf);
  return -1;
 }
 if ((!platform_sys_dir_uid(stp->st_uid) && stp->st_uid != uid) ||
     (stp->st_mode & 022) != 0) {
  snprintf(err, errlen, "bad ownership or modes for file %s",
      buf);
  return -1;
 }


 for (;;) {
  if ((cp = dirname(buf)) == ((void*)0)) {
   snprintf(err, errlen, "dirname() failed");
   return -1;
  }
  strlcpy(buf, cp, sizeof(buf));

  if (stat(buf, &st) < 0 ||
      (!platform_sys_dir_uid(st.st_uid) && st.st_uid != uid) ||
      (st.st_mode & 022) != 0) {
   snprintf(err, errlen,
       "bad ownership or modes for directory %s", buf);
   return -1;
  }


  if (comparehome && strcmp(homedir, buf) == 0)
   break;





  if ((strcmp("/", buf) == 0) || (strcmp(".", buf) == 0))
   break;
 }
 return 0;
}
