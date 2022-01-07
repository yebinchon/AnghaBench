
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct stat {int st_mode; scalar_t__ st_uid; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct passwd {scalar_t__ pw_uid; int pw_dir; } ;
typedef int ss ;
typedef int pbuf ;
typedef int FILE ;


 int MAXPATHLEN ;
 int S_ISREG (int) ;
 int S_IWGRP ;
 int S_IWOTH ;
 char* _PATH_HEQUIV ;
 scalar_t__ __check_rhosts_file ;
 scalar_t__ __ivaliduser_sa (int *,struct sockaddr const*,int,char const*,char const*) ;
 char* __rcmd_errstr ;
 scalar_t__ _fstat (int ,struct stat*) ;
 int fclose (int *) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ geteuid () ;
 struct passwd* getpwnam (char const*) ;
 scalar_t__ lstat (char*,struct stat*) ;
 int memcpy (struct sockaddr_storage*,void const*,int) ;
 int seteuid (scalar_t__) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,int ,int) ;

int
iruserok_sa(const void *ra, int rlen, int superuser, const char *ruser,
    const char *luser)
{
 char *cp;
 struct stat sbuf;
 struct passwd *pwd;
 FILE *hostf;
 uid_t uid;
 int first;
 char pbuf[MAXPATHLEN];
 const struct sockaddr *raddr;
 struct sockaddr_storage ss;


 if (rlen > sizeof(ss))
  return(-1);
 memcpy(&ss, ra, rlen);
 raddr = (struct sockaddr *)&ss;

 first = 1;
 hostf = superuser ? ((void*)0) : fopen(_PATH_HEQUIV, "re");
again:
 if (hostf) {
  if (__ivaliduser_sa(hostf, raddr, rlen, luser, ruser) == 0) {
   (void)fclose(hostf);
   return (0);
  }
  (void)fclose(hostf);
 }
 if (first == 1 && (__check_rhosts_file || superuser)) {
  first = 0;
  if ((pwd = getpwnam(luser)) == ((void*)0))
   return (-1);
  (void)strlcpy(pbuf, pwd->pw_dir, sizeof(pbuf));
  (void)strlcat(pbuf, "/.rhosts", sizeof(pbuf));






  uid = geteuid();
  (void)seteuid(pwd->pw_uid);
  hostf = fopen(pbuf, "re");
  (void)seteuid(uid);

  if (hostf == ((void*)0))
   return (-1);




  cp = ((void*)0);
  if (lstat(pbuf, &sbuf) < 0)
   cp = ".rhosts lstat failed";
  else if (!S_ISREG(sbuf.st_mode))
   cp = ".rhosts not regular file";
  else if (_fstat(fileno(hostf), &sbuf) < 0)
   cp = ".rhosts fstat failed";
  else if (sbuf.st_uid && sbuf.st_uid != pwd->pw_uid)
   cp = "bad .rhosts owner";
  else if (sbuf.st_mode & (S_IWGRP|S_IWOTH))
   cp = ".rhosts writeable by other than owner";

  if (cp) {
   __rcmd_errstr = cp;
   (void)fclose(hostf);
   return (-1);
  }
  goto again;
 }
 return (-1);
}
