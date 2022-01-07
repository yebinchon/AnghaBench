
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u_int ;
typedef int mode_t ;
struct TYPE_7__ {int gateway_ports; int streamlocal_bind_mask; int streamlocal_bind_unlink; } ;
struct TYPE_8__ {int use_pam; scalar_t__ num_host_key_files; scalar_t__ num_ports; int address_family; int login_grace_time; scalar_t__ permit_root_login; int ignore_rhosts; int ignore_user_known_hosts; int print_motd; int print_lastlog; int x11_forwarding; int x11_display_offset; int x11_use_localhost; int permit_tty; int permit_user_rc; int strict_modes; int tcp_keep_alive; scalar_t__ log_facility; scalar_t__ log_level; int hostbased_authentication; int hostbased_uses_name_from_packet_only; int pubkey_authentication; int kerberos_authentication; int kerberos_or_local_passwd; int kerberos_ticket_cleanup; int kerberos_get_afs_token; int gss_authentication; int gss_cleanup_creds; int gss_strict_acceptor; int password_authentication; int kbd_interactive_authentication; int challenge_response_authentication; int permit_empty_passwd; int permit_user_env; int compression; int rekey_limit; int rekey_interval; int allow_tcp_forwarding; int allow_streamlocal_forwarding; int allow_agent_forwarding; int max_startups; int max_startups_rate; int max_startups_begin; int max_authtries; int max_sessions; int use_dns; int client_alive_interval; int client_alive_count_max; scalar_t__ num_authkeys_files; int permit_tun; int ip_qos_interactive; int ip_qos_bulk; int fingerprint_hash; int disable_forwarding; int expose_userauth_info; int use_blacklist; size_t num_host_cert_files; int num_auth_methods; int ** auth_methods; int ** host_cert_files; int ** host_key_files; int * routing_domain; int * chroot_directory; int * adm_forced_command; int * authorized_principals_file; int * revoked_keys_file; int * trusted_user_ca_keys; int * banner; int * xauth_location; int * pid_file; TYPE_1__ fwd_opts; int * version_addendum; int authorized_keys_files; int * permit_user_env_whitelist; int * listen_addrs; int * ports; } ;
typedef TYPE_2__ ServerOptions ;


 int AF_UNSPEC ;
 int CLEAR_ON_NONE (int *) ;
 int COMP_DELAYED ;
 int DEFAULT_AUTH_FAIL_MAX ;
 int DEFAULT_SESSIONS_MAX ;
 void* FORWARD_ALLOW ;
 int IPTOS_DSCP_AF21 ;
 int IPTOS_DSCP_CS1 ;
 scalar_t__ PERMIT_NO ;
 scalar_t__ PERMIT_NOT_SET ;
 int PRIVSEP_ON ;
 int SSH_DEFAULT_PORT ;
 int SSH_FP_HASH_DEFAULT ;
 int SSH_TUNMODE_NO ;
 int SSH_VERSION_FREEBSD ;
 scalar_t__ SYSLOG_FACILITY_AUTH ;
 scalar_t__ SYSLOG_FACILITY_NOT_SET ;
 scalar_t__ SYSLOG_LEVEL_INFO ;
 scalar_t__ SYSLOG_LEVEL_NOT_SET ;
 int _PATH_HOST_DSA_KEY_FILE ;
 int _PATH_HOST_ECDSA_KEY_FILE ;
 int _PATH_HOST_ED25519_KEY_FILE ;
 int _PATH_HOST_RSA_KEY_FILE ;
 int _PATH_HOST_XMSS_KEY_FILE ;
 int _PATH_SSH_DAEMON_PID_FILE ;
 int _PATH_SSH_USER_PERMITTED_KEYS ;
 int _PATH_SSH_USER_PERMITTED_KEYS2 ;
 int _PATH_XAUTH ;
 int add_listen_addr (TYPE_2__*,int *,int *,int ) ;
 int array_append (int ,int ,char*,int *,scalar_t__*,int ) ;
 int assemble_algorithms (TYPE_2__*) ;
 int defaultkey ;
 int error (char*) ;
 int fatal (char*) ;
 int free (int *) ;
 int servconf_add_hostkey (int ,int ,TYPE_2__*,int ) ;
 scalar_t__ strcmp (int *,char*) ;
 int use_privsep ;
 void* xstrdup (int ) ;

void
fill_default_server_options(ServerOptions *options)
{
 u_int i;


 if (options->use_pam == -1)
  options->use_pam = 1;


 if (options->num_host_key_files == 0) {

  servconf_add_hostkey(defaultkey, 0, options,
      _PATH_HOST_RSA_KEY_FILE);
  servconf_add_hostkey(defaultkey, 0, options,
      _PATH_HOST_DSA_KEY_FILE);




  servconf_add_hostkey(defaultkey, 0, options,
      _PATH_HOST_ED25519_KEY_FILE);




 }
 if (options->num_host_key_files == 0)
  fatal("No host key files found");

 if (options->num_ports == 0)
  options->ports[options->num_ports++] = SSH_DEFAULT_PORT;
 if (options->address_family == -1)
  options->address_family = AF_UNSPEC;
 if (options->listen_addrs == ((void*)0))
  add_listen_addr(options, ((void*)0), ((void*)0), 0);
 if (options->pid_file == ((void*)0))
  options->pid_file = xstrdup(_PATH_SSH_DAEMON_PID_FILE);
 if (options->login_grace_time == -1)
  options->login_grace_time = 120;
 if (options->permit_root_login == PERMIT_NOT_SET)
  options->permit_root_login = PERMIT_NO;
 if (options->ignore_rhosts == -1)
  options->ignore_rhosts = 1;
 if (options->ignore_user_known_hosts == -1)
  options->ignore_user_known_hosts = 0;
 if (options->print_motd == -1)
  options->print_motd = 1;
 if (options->print_lastlog == -1)
  options->print_lastlog = 1;
 if (options->x11_forwarding == -1)
  options->x11_forwarding = 1;
 if (options->x11_display_offset == -1)
  options->x11_display_offset = 10;
 if (options->x11_use_localhost == -1)
  options->x11_use_localhost = 1;
 if (options->xauth_location == ((void*)0))
  options->xauth_location = xstrdup(_PATH_XAUTH);
 if (options->permit_tty == -1)
  options->permit_tty = 1;
 if (options->permit_user_rc == -1)
  options->permit_user_rc = 1;
 if (options->strict_modes == -1)
  options->strict_modes = 1;
 if (options->tcp_keep_alive == -1)
  options->tcp_keep_alive = 1;
 if (options->log_facility == SYSLOG_FACILITY_NOT_SET)
  options->log_facility = SYSLOG_FACILITY_AUTH;
 if (options->log_level == SYSLOG_LEVEL_NOT_SET)
  options->log_level = SYSLOG_LEVEL_INFO;
 if (options->hostbased_authentication == -1)
  options->hostbased_authentication = 0;
 if (options->hostbased_uses_name_from_packet_only == -1)
  options->hostbased_uses_name_from_packet_only = 0;
 if (options->pubkey_authentication == -1)
  options->pubkey_authentication = 1;
 if (options->kerberos_authentication == -1)
  options->kerberos_authentication = 0;
 if (options->kerberos_or_local_passwd == -1)
  options->kerberos_or_local_passwd = 1;
 if (options->kerberos_ticket_cleanup == -1)
  options->kerberos_ticket_cleanup = 1;
 if (options->kerberos_get_afs_token == -1)
  options->kerberos_get_afs_token = 0;
 if (options->gss_authentication == -1)
  options->gss_authentication = 0;
 if (options->gss_cleanup_creds == -1)
  options->gss_cleanup_creds = 1;
 if (options->gss_strict_acceptor == -1)
  options->gss_strict_acceptor = 1;
 if (options->password_authentication == -1)
  options->password_authentication = 0;
 if (options->kbd_interactive_authentication == -1)
  options->kbd_interactive_authentication = 0;
 if (options->challenge_response_authentication == -1)
  options->challenge_response_authentication = 1;
 if (options->permit_empty_passwd == -1)
  options->permit_empty_passwd = 0;
 if (options->permit_user_env == -1) {
  options->permit_user_env = 0;
  options->permit_user_env_whitelist = ((void*)0);
 }
 if (options->compression == -1)
  options->compression = COMP_DELAYED;
 if (options->rekey_limit == -1)
  options->rekey_limit = 0;
 if (options->rekey_interval == -1)
  options->rekey_interval = 0;
 if (options->allow_tcp_forwarding == -1)
  options->allow_tcp_forwarding = FORWARD_ALLOW;
 if (options->allow_streamlocal_forwarding == -1)
  options->allow_streamlocal_forwarding = FORWARD_ALLOW;
 if (options->allow_agent_forwarding == -1)
  options->allow_agent_forwarding = 1;
 if (options->fwd_opts.gateway_ports == -1)
  options->fwd_opts.gateway_ports = 0;
 if (options->max_startups == -1)
  options->max_startups = 100;
 if (options->max_startups_rate == -1)
  options->max_startups_rate = 30;
 if (options->max_startups_begin == -1)
  options->max_startups_begin = 10;
 if (options->max_authtries == -1)
  options->max_authtries = DEFAULT_AUTH_FAIL_MAX;
 if (options->max_sessions == -1)
  options->max_sessions = DEFAULT_SESSIONS_MAX;
 if (options->use_dns == -1)
  options->use_dns = 1;
 if (options->client_alive_interval == -1)
  options->client_alive_interval = 0;
 if (options->client_alive_count_max == -1)
  options->client_alive_count_max = 3;
 if (options->num_authkeys_files == 0) {
  array_append(defaultkey, 0, "AuthorizedKeysFiles",
      &options->authorized_keys_files,
      &options->num_authkeys_files,
      _PATH_SSH_USER_PERMITTED_KEYS);
  array_append(defaultkey, 0, "AuthorizedKeysFiles",
      &options->authorized_keys_files,
      &options->num_authkeys_files,
      _PATH_SSH_USER_PERMITTED_KEYS2);
 }
 if (options->permit_tun == -1)
  options->permit_tun = SSH_TUNMODE_NO;
 if (options->ip_qos_interactive == -1)
  options->ip_qos_interactive = IPTOS_DSCP_AF21;
 if (options->ip_qos_bulk == -1)
  options->ip_qos_bulk = IPTOS_DSCP_CS1;
 if (options->version_addendum == ((void*)0))
  options->version_addendum = xstrdup(SSH_VERSION_FREEBSD);
 if (options->fwd_opts.streamlocal_bind_mask == (mode_t)-1)
  options->fwd_opts.streamlocal_bind_mask = 0177;
 if (options->fwd_opts.streamlocal_bind_unlink == -1)
  options->fwd_opts.streamlocal_bind_unlink = 0;
 if (options->fingerprint_hash == -1)
  options->fingerprint_hash = SSH_FP_HASH_DEFAULT;
 if (options->disable_forwarding == -1)
  options->disable_forwarding = 0;
 if (options->expose_userauth_info == -1)
  options->expose_userauth_info = 0;
 if (options->use_blacklist == -1)
  options->use_blacklist = 0;

 assemble_algorithms(options);


 if (use_privsep == -1)
  use_privsep = PRIVSEP_ON;
 do { if (option_clear_or_none(options->pid_file)) { free(options->pid_file); options->pid_file = ((void*)0); } } while(0);
 do { if (option_clear_or_none(options->xauth_location)) { free(options->xauth_location); options->xauth_location = ((void*)0); } } while(0);
 do { if (option_clear_or_none(options->banner)) { free(options->banner); options->banner = ((void*)0); } } while(0);
 do { if (option_clear_or_none(options->trusted_user_ca_keys)) { free(options->trusted_user_ca_keys); options->trusted_user_ca_keys = ((void*)0); } } while(0);
 do { if (option_clear_or_none(options->revoked_keys_file)) { free(options->revoked_keys_file); options->revoked_keys_file = ((void*)0); } } while(0);
 do { if (option_clear_or_none(options->authorized_principals_file)) { free(options->authorized_principals_file); options->authorized_principals_file = ((void*)0); } } while(0);
 do { if (option_clear_or_none(options->adm_forced_command)) { free(options->adm_forced_command); options->adm_forced_command = ((void*)0); } } while(0);
 do { if (option_clear_or_none(options->chroot_directory)) { free(options->chroot_directory); options->chroot_directory = ((void*)0); } } while(0);
 do { if (option_clear_or_none(options->routing_domain)) { free(options->routing_domain); options->routing_domain = ((void*)0); } } while(0);
 for (i = 0; i < options->num_host_key_files; i++)
  do { if (option_clear_or_none(options->host_key_files[i])) { free(options->host_key_files[i]); options->host_key_files[i] = ((void*)0); } } while(0);
 for (i = 0; i < options->num_host_cert_files; i++)
  do { if (option_clear_or_none(options->host_cert_files[i])) { free(options->host_cert_files[i]); options->host_cert_files[i] = ((void*)0); } } while(0);



 if (options->num_auth_methods == 1 &&
     strcmp(options->auth_methods[0], "any") == 0) {
  free(options->auth_methods[0]);
  options->auth_methods[0] = ((void*)0);
  options->num_auth_methods = 0;
 }


 if (use_privsep && options->compression == 1) {
  error("This platform does not support both privilege "
      "separation and compression");
  error("Compression disabled");
  options->compression = 0;
 }


}
