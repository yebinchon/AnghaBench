
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ time_t ;
struct sshauthopt {scalar_t__ valid_before; int * required_from_host_cert; int * required_from_host_keys; scalar_t__ cert_authority; int * cert_principals; } ;
struct ssh {int dummy; } ;
struct passwd {int pw_name; } ;
typedef int buf ;
struct TYPE_2__ {int use_dns; } ;


 int addr_match_cidr_list (char const*,int *) ;
 int auth_debug_add (char*,char const*,...) ;
 char* auth_get_canonical_hostname (struct ssh*,int ) ;
 int auth_log_authopts (char const*,struct sshauthopt*,int) ;
 int debug (char*,char const*,...) ;
 int error (char*,char const*) ;
 int format_absolute_time (scalar_t__,char*,int) ;
 int logit (char*,char const*,int ,char const*,...) ;
 int match_host_and_ip (char const*,char const*,int *) ;
 TYPE_1__ options ;
 char* ssh_remote_ipaddr (struct ssh*) ;
 scalar_t__ time (int *) ;

int
auth_authorise_keyopts(struct ssh *ssh, struct passwd *pw,
    struct sshauthopt *opts, int allow_cert_authority, const char *loc)
{
 const char *remote_ip = ssh_remote_ipaddr(ssh);
 const char *remote_host = auth_get_canonical_hostname(ssh,
     options.use_dns);
 time_t now = time(((void*)0));
 char buf[64];





 if (opts->valid_before && now > 0 &&
     opts->valid_before < (uint64_t)now) {
  format_absolute_time(opts->valid_before, buf, sizeof(buf));
  debug("%s: entry expired at %s", loc, buf);
  auth_debug_add("%s: entry expired at %s", loc, buf);
  return -1;
 }

 if (opts->cert_principals != ((void*)0) && !opts->cert_authority) {
  debug("%s: principals on non-CA key", loc);
  auth_debug_add("%s: principals on non-CA key", loc);

  return -1;
 }

 if (!allow_cert_authority && opts->cert_authority) {
  debug("%s: cert-authority flag invalid here", loc);
  auth_debug_add("%s: cert-authority flag invalid here", loc);

  return -1;
 }


 if (opts->required_from_host_keys != ((void*)0)) {
  switch (match_host_and_ip(remote_host, remote_ip,
      opts->required_from_host_keys )) {
  case 1:

   break;
  case -1:
  default:
   debug("%s: invalid from criteria", loc);
   auth_debug_add("%s: invalid from criteria", loc);

  case 0:
   logit("%s: Authentication tried for %.100s with "
       "correct key but not from a permitted "
       "host (host=%.200s, ip=%.200s, required=%.200s).",
       loc, pw->pw_name, remote_host, remote_ip,
       opts->required_from_host_keys);
   auth_debug_add("%s: Your host '%.200s' is not "
       "permitted to use this key for login.",
       loc, remote_host);

   return -1;
  }
 }

 if (opts->required_from_host_cert != ((void*)0)) {
  switch (addr_match_cidr_list(remote_ip,
      opts->required_from_host_cert)) {
  case 1:

   break;
  case -1:
  default:

   error("%s: Certificate source-address invalid",
       loc);

  case 0:
   logit("%s: Authentication tried for %.100s with valid "
       "certificate but not from a permitted source "
       "address (%.200s).", loc, pw->pw_name, remote_ip);
   auth_debug_add("%s: Your address '%.200s' is not "
       "permitted to use this certificate for login.",
       loc, remote_ip);
   return -1;
  }
 }






 auth_log_authopts(loc, opts, 1);

 return 0;
}
