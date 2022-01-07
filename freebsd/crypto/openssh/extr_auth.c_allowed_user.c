
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct stat {int st_mode; } ;
struct ssh {int dummy; } ;
struct spwd {char* sp_pwdp; } ;
struct passwd {char* pw_passwd; char* pw_shell; int pw_name; int pw_gid; } ;
struct TYPE_2__ {scalar_t__ num_deny_users; size_t num_allow_users; scalar_t__ num_deny_groups; scalar_t__ num_allow_groups; int allow_groups; int deny_groups; int * allow_users; int * deny_users; int use_dns; int * chroot_directory; int use_pam; } ;


 int LOCKED_PASSWD_PREFIX ;
 int LOCKED_PASSWD_STRING ;
 int LOCKED_PASSWD_SUBSTR ;
 scalar_t__ S_ISREG (int) ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 char* _PATH_BSHELL ;
 struct ssh* active_state ;
 char* auth_get_canonical_hostname (struct ssh*,int ) ;
 scalar_t__ auth_shadow_acctexpired (struct spwd*) ;
 int fatal (char*,int ) ;
 int free (char*) ;
 int ga_free () ;
 scalar_t__ ga_init (int ,int ) ;
 scalar_t__ ga_match (int ,scalar_t__) ;
 char* get_iaf_password (struct passwd*) ;
 struct spwd* getspnam (int ) ;
 int loginmsg ;
 int logit (char*,int ,...) ;
 int match_user (int ,char const*,char const*,int ) ;
 TYPE_1__ options ;
 char* ssh_remote_ipaddr (struct ssh*) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ strcasecmp (int *,char*) ;
 scalar_t__ strcmp (char const*,int ) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,int ) ;
 scalar_t__ strstr (char const*,int ) ;
 int sys_auth_allowed_user (struct passwd*,int *) ;
 char* xstrdup (char*) ;

int
allowed_user(struct passwd * pw)
{
 struct ssh *ssh = active_state;
 struct stat st;
 const char *hostname = ((void*)0), *ipaddr = ((void*)0), *passwd = ((void*)0);
 u_int i;
 int r;





 if (!pw || !pw->pw_name)
  return 0;
 passwd = pw->pw_passwd;
 if (!options.use_pam && passwd && *passwd) {
  int locked = 0;
  if (locked) {
   logit("User %.100s not allowed because account is locked",
       pw->pw_name);
   return 0;
  }
 }





 if (options.chroot_directory == ((void*)0) ||
     strcasecmp(options.chroot_directory, "none") == 0) {
  char *shell = xstrdup((pw->pw_shell[0] == '\0') ?
      _PATH_BSHELL : pw->pw_shell);

  if (stat(shell, &st) != 0) {
   logit("User %.100s not allowed because shell %.100s "
       "does not exist", pw->pw_name, shell);
   free(shell);
   return 0;
  }
  if (S_ISREG(st.st_mode) == 0 ||
      (st.st_mode & (S_IXOTH|S_IXUSR|S_IXGRP)) == 0) {
   logit("User %.100s not allowed because shell %.100s "
       "is not executable", pw->pw_name, shell);
   free(shell);
   return 0;
  }
  free(shell);
 }

 if (options.num_deny_users > 0 || options.num_allow_users > 0 ||
     options.num_deny_groups > 0 || options.num_allow_groups > 0) {
  hostname = auth_get_canonical_hostname(ssh, options.use_dns);
  ipaddr = ssh_remote_ipaddr(ssh);
 }


 if (options.num_deny_users > 0) {
  for (i = 0; i < options.num_deny_users; i++) {
   r = match_user(pw->pw_name, hostname, ipaddr,
       options.deny_users[i]);
   if (r < 0) {
    fatal("Invalid DenyUsers pattern \"%.100s\"",
        options.deny_users[i]);
   } else if (r != 0) {
    logit("User %.100s from %.100s not allowed "
        "because listed in DenyUsers",
        pw->pw_name, hostname);
    return 0;
   }
  }
 }

 if (options.num_allow_users > 0) {
  for (i = 0; i < options.num_allow_users; i++) {
   r = match_user(pw->pw_name, hostname, ipaddr,
       options.allow_users[i]);
   if (r < 0) {
    fatal("Invalid AllowUsers pattern \"%.100s\"",
        options.allow_users[i]);
   } else if (r == 1)
    break;
  }

  if (i >= options.num_allow_users) {
   logit("User %.100s from %.100s not allowed because "
       "not listed in AllowUsers", pw->pw_name, hostname);
   return 0;
  }
 }
 if (options.num_deny_groups > 0 || options.num_allow_groups > 0) {

  if (ga_init(pw->pw_name, pw->pw_gid) == 0) {
   logit("User %.100s from %.100s not allowed because "
       "not in any group", pw->pw_name, hostname);
   return 0;
  }


  if (options.num_deny_groups > 0)
   if (ga_match(options.deny_groups,
       options.num_deny_groups)) {
    ga_free();
    logit("User %.100s from %.100s not allowed "
        "because a group is listed in DenyGroups",
        pw->pw_name, hostname);
    return 0;
   }




  if (options.num_allow_groups > 0)
   if (!ga_match(options.allow_groups,
       options.num_allow_groups)) {
    ga_free();
    logit("User %.100s from %.100s not allowed "
        "because none of user's groups are listed "
        "in AllowGroups", pw->pw_name, hostname);
    return 0;
   }
  ga_free();
 }







 return 1;
}
