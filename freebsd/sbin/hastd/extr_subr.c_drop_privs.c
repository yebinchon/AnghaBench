
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct passwd {scalar_t__ pw_gid; scalar_t__ pw_uid; int pw_dir; } ;
struct jail {char* hostname; int * ip6; scalar_t__ ip6s; int * ip4; scalar_t__ ip4s; int * jailname; int path; int version; } ;
struct hast_resource {char* hr_name; scalar_t__ hr_role; int hr_ggatefd; int hr_localfd; } ;
typedef int jailst ;
typedef int jailhost ;
typedef scalar_t__ gid_t ;
typedef int cap_rights_t ;


 int CAP_FLOCK ;
 int CAP_IOCTL ;
 int CAP_PREAD ;
 int CAP_PWRITE ;


 scalar_t__ ENOENT ;




 scalar_t__ HAST_ROLE_PRIMARY ;
 scalar_t__ HAST_ROLE_SECONDARY ;
 int HAST_USER ;
 int JAIL_API_VERSION ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int LOG_WARNING ;
 int PJDLOG_ASSERT (int) ;
 int PJDLOG_VERIFY (int) ;
 int bzero (struct jail*,int) ;
 scalar_t__ cap_enter () ;
 int cap_ioctls_limit (int ,unsigned long const*,int ) ;
 int cap_rights_init (int *,int ,...) ;
 int cap_rights_limit (int ,int *) ;
 scalar_t__ chdir (char*) ;
 int chroot (int ) ;
 scalar_t__ errno ;
 int getgroups (int,scalar_t__*) ;
 struct passwd* getpwnam (int ) ;
 scalar_t__ getresgid (scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ getresuid (scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ jail (struct jail*) ;
 int nitems (unsigned long const*) ;
 int pjdlog_common (int ,int,scalar_t__,char*) ;
 int pjdlog_debug (int,char*,char*,char*) ;
 int pjdlog_errno (int ,char*,...) ;
 int pjdlog_error (char*,int ) ;
 char* role2str (scalar_t__) ;
 int setgid (scalar_t__) ;
 int setgroups (int,scalar_t__*) ;
 int setuid (scalar_t__) ;
 int snprintf (char*,int,char*,...) ;

int
drop_privs(const struct hast_resource *res)
{
 char jailhost[sizeof(res->hr_name) * 2];
 struct jail jailst;
 struct passwd *pw;
 uid_t ruid, euid, suid;
 gid_t rgid, egid, sgid;
 gid_t gidset[1];
 bool capsicum, jailed;






 errno = 0;
 pw = getpwnam(HAST_USER);
 if (pw == ((void*)0)) {
  if (errno != 0) {
   pjdlog_errno(LOG_ERR,
       "Unable to find info about '%s' user", HAST_USER);
   return (-1);
  } else {
   pjdlog_error("'%s' user doesn't exist.", HAST_USER);
   errno = ENOENT;
   return (-1);
  }
 }

 bzero(&jailst, sizeof(jailst));
 jailst.version = JAIL_API_VERSION;
 jailst.path = pw->pw_dir;
 if (res == ((void*)0)) {
  (void)snprintf(jailhost, sizeof(jailhost), "hastctl");
 } else {
  (void)snprintf(jailhost, sizeof(jailhost), "hastd: %s (%s)",
      res->hr_name, role2str(res->hr_role));
 }
 jailst.hostname = jailhost;
 jailst.jailname = ((void*)0);
 jailst.ip4s = 0;
 jailst.ip4 = ((void*)0);
 jailst.ip6s = 0;
 jailst.ip6 = ((void*)0);
 if (jail(&jailst) >= 0) {
  jailed = 1;
 } else {
  jailed = 0;
  pjdlog_errno(LOG_WARNING,
      "Unable to jail to directory to %s", pw->pw_dir);
  if (chroot(pw->pw_dir) == -1) {
   pjdlog_errno(LOG_ERR,
       "Unable to change root directory to %s",
       pw->pw_dir);
   return (-1);
  }
 }
 PJDLOG_VERIFY(chdir("/") == 0);
 gidset[0] = pw->pw_gid;
 if (setgroups(1, gidset) == -1) {
  pjdlog_errno(LOG_ERR, "Unable to set groups to gid %u",
      (unsigned int)pw->pw_gid);
  return (-1);
 }
 if (setgid(pw->pw_gid) == -1) {
  pjdlog_errno(LOG_ERR, "Unable to set gid to %u",
      (unsigned int)pw->pw_gid);
  return (-1);
 }
 if (setuid(pw->pw_uid) == -1) {
  pjdlog_errno(LOG_ERR, "Unable to set uid to %u",
      (unsigned int)pw->pw_uid);
  return (-1);
 }
 capsicum = 0;





 PJDLOG_VERIFY(getresuid(&ruid, &euid, &suid) == 0);
 PJDLOG_VERIFY(ruid == pw->pw_uid);
 PJDLOG_VERIFY(euid == pw->pw_uid);
 PJDLOG_VERIFY(suid == pw->pw_uid);
 PJDLOG_VERIFY(getresgid(&rgid, &egid, &sgid) == 0);
 PJDLOG_VERIFY(rgid == pw->pw_gid);
 PJDLOG_VERIFY(egid == pw->pw_gid);
 PJDLOG_VERIFY(sgid == pw->pw_gid);
 PJDLOG_VERIFY(getgroups(0, ((void*)0)) == 1);
 PJDLOG_VERIFY(getgroups(1, gidset) == 1);
 PJDLOG_VERIFY(gidset[0] == pw->pw_gid);

 pjdlog_debug(1,
     "Privileges successfully dropped using %s%s+setgid+setuid.",
     capsicum ? "capsicum+" : "", jailed ? "jail" : "chroot");

 return (0);
}
