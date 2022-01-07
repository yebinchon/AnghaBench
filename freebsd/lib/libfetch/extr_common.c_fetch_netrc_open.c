
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_dir; } ;
typedef int fn ;


 int DEBUGF (char*,char const*,...) ;
 int O_RDONLY ;
 int PATH_MAX ;
 int errno ;
 int fetch_info (char*) ;
 char* getenv (char*) ;
 struct passwd* getpwuid (int ) ;
 int getuid () ;
 int open (char*,int ) ;
 int snprintf (char*,int,char*,char const*) ;
 int strerror (int) ;

__attribute__((used)) static int
fetch_netrc_open(void)
{
 struct passwd *pwd;
 char fn[PATH_MAX];
 const char *p;
 int fd, serrno;

 if ((p = getenv("NETRC")) != ((void*)0)) {
  DEBUGF("NETRC=%s\n", p);
  if (snprintf(fn, sizeof(fn), "%s", p) >= (int)sizeof(fn)) {
   fetch_info("$NETRC specifies a file name "
       "longer than PATH_MAX");
   return (-1);
  }
 } else {
  if ((p = getenv("HOME")) == ((void*)0)) {
   if ((pwd = getpwuid(getuid())) == ((void*)0) ||
       (p = pwd->pw_dir) == ((void*)0))
    return (-1);
  }
  if (snprintf(fn, sizeof(fn), "%s/.netrc", p) >= (int)sizeof(fn))
   return (-1);
 }

 if ((fd = open(fn, O_RDONLY)) < 0) {
  serrno = errno;
  DEBUGF("%s: %s\n", fn, strerror(serrno));
  errno = serrno;
 }
 return (fd);
}
