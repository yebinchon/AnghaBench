
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {scalar_t__ pw_gid; scalar_t__ pw_uid; int pw_name; } ;


 int CAPNG_DROP ;
 int CAPNG_EFFECTIVE ;
 int CAPNG_NO_FLAG ;
 int CAPNG_PERMITTED ;
 int CAPNG_SELECT_BOTH ;
 int CAP_SETGID ;
 int CAP_SETUID ;
 int CAP_SYS_CHROOT ;
 int capng_apply (int ) ;
 int capng_change_id (scalar_t__,scalar_t__,int ) ;
 int capng_updatev (int ,int,int ,int ,int ,int) ;
 scalar_t__ chdir (char*) ;
 scalar_t__ chroot (char const*) ;
 int errno ;
 int exit_tcpdump (int) ;
 int fprintf (int ,char*,...) ;
 struct passwd* getpwnam (char const*) ;
 scalar_t__ initgroups (int ,scalar_t__) ;
 char* pcap_strerror (int ) ;
 char* program_name ;
 scalar_t__ setgid (scalar_t__) ;
 scalar_t__ setuid (scalar_t__) ;
 int stderr ;

__attribute__((used)) static void
droproot(const char *username, const char *chroot_dir)
{
 struct passwd *pw = ((void*)0);

 if (chroot_dir && !username) {
  fprintf(stderr, "%s: Chroot without dropping root is insecure\n",
   program_name);
  exit_tcpdump(1);
 }

 pw = getpwnam(username);
 if (pw) {
  if (chroot_dir) {
   if (chroot(chroot_dir) != 0 || chdir ("/") != 0) {
    fprintf(stderr, "%s: Couldn't chroot/chdir to '%.64s': %s\n",
     program_name, chroot_dir, pcap_strerror(errno));
    exit_tcpdump(1);
   }
  }
  if (initgroups(pw->pw_name, pw->pw_gid) != 0 ||
      setgid(pw->pw_gid) != 0 || setuid(pw->pw_uid) != 0) {
   fprintf(stderr, "%s: Couldn't change to '%.32s' uid=%lu gid=%lu: %s\n",
    program_name, username,
    (unsigned long)pw->pw_uid,
    (unsigned long)pw->pw_gid,
    pcap_strerror(errno));
   exit_tcpdump(1);
  }
  else {
   fprintf(stderr, "dropped privs to %s\n", username);
  }

 }
 else {
  fprintf(stderr, "%s: Couldn't find user '%.32s'\n",
   program_name, username);
  exit_tcpdump(1);
 }
}
