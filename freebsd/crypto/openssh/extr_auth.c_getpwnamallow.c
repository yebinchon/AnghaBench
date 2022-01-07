
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ssh {int dummy; } ;
struct passwd {int pw_name; } ;
struct connection_info {char const* user; } ;
typedef int login_cap_t ;
typedef int auth_session_t ;
struct TYPE_4__ {int use_dns; int log_level; } ;


 int BLACKLIST_BAD_USER ;
 int BLACKLIST_NOTIFY (int ,char const*) ;
 int SSH_INVALID_USER ;
 struct ssh* active_state ;
 int aix_restoreauthdb () ;
 int aix_setauthdb (char const*) ;
 int allowed_user (struct passwd*) ;
 int audit_event (int ) ;
 scalar_t__ auth_approval (int *,int *,int ,char*) ;
 int auth_close (int *) ;
 int auth_get_canonical_hostname (struct ssh*,int ) ;
 int * auth_open () ;
 scalar_t__ auth_setpwd (int *,struct passwd*) ;
 int debug (char*,char const*) ;
 struct connection_info* get_connection_info (int,int ) ;
 struct passwd* getpwnam (char const*) ;
 int log_change_level (int ) ;
 int * login_getpwclass (struct passwd*) ;
 int logit (char*,char const*,int ,...) ;
 TYPE_1__ options ;
 int parse_server_match_config (TYPE_1__*,struct connection_info*) ;
 int process_permitopen (struct ssh*,TYPE_1__*) ;
 struct passwd* pwcopy (struct passwd*) ;
 int record_failed_login (char const*,int ,char*) ;
 int ssh_remote_ipaddr (struct ssh*) ;
 int ssh_remote_port (struct ssh*) ;
 scalar_t__ strcmp (char const*,int ) ;

struct passwd *
getpwnamallow(const char *user)
{
 struct ssh *ssh = active_state;






 struct passwd *pw;
 struct connection_info *ci = get_connection_info(1, options.use_dns);

 ci->user = user;
 parse_server_match_config(&options, ci);
 log_change_level(options.log_level);
 process_permitopen(ssh, &options);





 pw = getpwnam(user);
 if (pw == ((void*)0)) {
  BLACKLIST_NOTIFY(BLACKLIST_BAD_USER, user);
  logit("Invalid user %.100s from %.100s port %d",
      user, ssh_remote_ipaddr(ssh), ssh_remote_port(ssh));







  return (((void*)0));
 }
 if (!allowed_user(pw))
  return (((void*)0));
 if (pw != ((void*)0))
  return (pwcopy(pw));
 return (((void*)0));
}
