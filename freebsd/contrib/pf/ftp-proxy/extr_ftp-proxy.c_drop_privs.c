
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_uid; int pw_gid; } ;


 int CHROOT_DIR ;
 int NOPRIV_USER ;
 scalar_t__ chdir (char*) ;
 scalar_t__ chroot (int ) ;
 struct passwd* getpwnam (int ) ;
 scalar_t__ setgroups (int,int *) ;
 scalar_t__ setresgid (int ,int ,int ) ;
 scalar_t__ setresuid (int ,int ,int ) ;
 int tzset () ;

int
drop_privs(void)
{
 struct passwd *pw;

 pw = getpwnam(NOPRIV_USER);
 if (pw == ((void*)0))
  return (0);

 tzset();
 if (chroot(CHROOT_DIR) != 0 || chdir("/") != 0 ||
     setgroups(1, &pw->pw_gid) != 0 ||
     setresgid(pw->pw_gid, pw->pw_gid, pw->pw_gid) != 0 ||
     setresuid(pw->pw_uid, pw->pw_uid, pw->pw_uid) != 0)
  return (0);

 return (1);
}
