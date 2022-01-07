
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct passwd {scalar_t__ pw_uid; scalar_t__ pw_gid; int pw_name; } ;
typedef int gid_t ;


 int debug (char*,int ,int ,...) ;
 int errno ;
 int fatal (char*,int ,...) ;
 int free (int *) ;
 scalar_t__ getegid () ;
 scalar_t__ geteuid () ;
 void* getgroups (int,int *) ;
 scalar_t__ initgroups (int ,scalar_t__) ;
 int privileged ;
 scalar_t__ saved_egid ;
 int * saved_egroups ;
 scalar_t__ saved_egroupslen ;
 scalar_t__ saved_euid ;
 scalar_t__ setegid (scalar_t__) ;
 int seteuid (scalar_t__) ;
 scalar_t__ setgid (scalar_t__) ;
 scalar_t__ setgroups (int,int *) ;
 scalar_t__ setuid (scalar_t__) ;
 int strerror (int ) ;
 int temporarily_use_uid_effective ;
 int * user_groups ;
 scalar_t__ user_groups_uid ;
 int user_groupslen ;
 int * xreallocarray (int *,int,int) ;

void
temporarily_use_uid(struct passwd *pw)
{
 if (geteuid() != 0) {
  privileged = 0;
  return;
 }


 privileged = 1;
 temporarily_use_uid_effective = 1;

 saved_egroupslen = getgroups(0, ((void*)0));
 if (saved_egroupslen < 0)
  fatal("getgroups: %.100s", strerror(errno));
 if (saved_egroupslen > 0) {
  saved_egroups = xreallocarray(saved_egroups,
      saved_egroupslen, sizeof(gid_t));
  if (getgroups(saved_egroupslen, saved_egroups) < 0)
   fatal("getgroups: %.100s", strerror(errno));
 } else {
  free(saved_egroups);
  saved_egroups = ((void*)0);
 }


 if (user_groupslen == -1 || user_groups_uid != pw->pw_uid) {
  if (initgroups(pw->pw_name, pw->pw_gid) < 0)
   fatal("initgroups: %s: %.100s", pw->pw_name,
       strerror(errno));

  user_groupslen = getgroups(0, ((void*)0));
  if (user_groupslen < 0)
   fatal("getgroups: %.100s", strerror(errno));
  if (user_groupslen > 0) {
   user_groups = xreallocarray(user_groups,
       user_groupslen, sizeof(gid_t));
   if (getgroups(user_groupslen, user_groups) < 0)
    fatal("getgroups: %.100s", strerror(errno));
  } else {
   free(user_groups);
   user_groups = ((void*)0);
  }
  user_groups_uid = pw->pw_uid;
 }

 if (setgroups(user_groupslen, user_groups) < 0)
  fatal("setgroups: %.100s", strerror(errno));


 if (setgid(getegid()) < 0)
  debug("setgid %u: %.100s", (u_int) getegid(), strerror(errno));

 if (setuid(geteuid()) < 0)
  debug("setuid %u: %.100s", (u_int) geteuid(), strerror(errno));

 if (setegid(pw->pw_gid) < 0)
  fatal("setegid %u: %.100s", (u_int)pw->pw_gid,
      strerror(errno));
 if (seteuid(pw->pw_uid) == -1)
  fatal("seteuid %u: %.100s", (u_int)pw->pw_uid,
      strerror(errno));
}
