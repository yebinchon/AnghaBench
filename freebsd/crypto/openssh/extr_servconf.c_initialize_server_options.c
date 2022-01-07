
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ mode_t ;
struct TYPE_5__ {int gateway_ports; int streamlocal_bind_unlink; scalar_t__ streamlocal_bind_mask; } ;
struct TYPE_6__ {int use_pam; int address_family; int login_grace_time; int ignore_rhosts; int ignore_user_known_hosts; int print_motd; int print_lastlog; int x11_forwarding; int x11_display_offset; int x11_use_localhost; int permit_tty; int permit_user_rc; int strict_modes; int tcp_keep_alive; int hostbased_authentication; int hostbased_uses_name_from_packet_only; int pubkey_authentication; int kerberos_authentication; int kerberos_or_local_passwd; int kerberos_ticket_cleanup; int kerberos_get_afs_token; int gss_authentication; int gss_cleanup_creds; int gss_strict_acceptor; int password_authentication; int kbd_interactive_authentication; int challenge_response_authentication; int permit_empty_passwd; int permit_user_env; int compression; int rekey_limit; int rekey_interval; int allow_tcp_forwarding; int allow_streamlocal_forwarding; int allow_agent_forwarding; int max_startups_begin; int max_startups_rate; int max_startups; int max_authtries; int max_sessions; int use_dns; int client_alive_interval; int client_alive_count_max; int permit_tun; int ip_qos_interactive; int ip_qos_bulk; int fingerprint_hash; int disable_forwarding; int expose_userauth_info; int use_blacklist; int * version_addendum; int * authorized_principals_command_user; int * authorized_principals_command; int * authorized_principals_file; int * trusted_user_ca_keys; int * revoked_keys_file; int * authorized_keys_command_user; int * authorized_keys_command; int * chroot_directory; int * adm_forced_command; int * permitted_listens; int * permitted_opens; scalar_t__ num_setenv; scalar_t__ num_accept_env; scalar_t__ num_authkeys_files; int * banner; scalar_t__ num_subsystems; TYPE_1__ fwd_opts; int * kex_algorithms; int * macs; int * ciphers; scalar_t__ num_deny_groups; scalar_t__ num_allow_groups; scalar_t__ num_deny_users; scalar_t__ num_allow_users; int * permit_user_env_whitelist; int * pubkey_key_types; int * hostkeyalgorithms; int * hostbased_key_types; int log_level; int log_facility; int * xauth_location; int permit_root_login; int * pid_file; int * host_key_agent; scalar_t__ num_host_cert_files; scalar_t__ num_host_key_files; int * routing_domain; scalar_t__ num_listen_addrs; int * listen_addrs; scalar_t__ num_queued_listens; int * queued_listen_addrs; scalar_t__ ports_from_cmdline; scalar_t__ num_ports; } ;
typedef TYPE_2__ ServerOptions ;


 int PERMIT_NOT_SET ;
 int SYSLOG_FACILITY_NOT_SET ;
 int SYSLOG_LEVEL_NOT_SET ;
 int memset (TYPE_2__*,int ,int) ;

void
initialize_server_options(ServerOptions *options)
{
 memset(options, 0, sizeof(*options));


 options->use_pam = -1;


 options->num_ports = 0;
 options->ports_from_cmdline = 0;
 options->queued_listen_addrs = ((void*)0);
 options->num_queued_listens = 0;
 options->listen_addrs = ((void*)0);
 options->num_listen_addrs = 0;
 options->address_family = -1;
 options->routing_domain = ((void*)0);
 options->num_host_key_files = 0;
 options->num_host_cert_files = 0;
 options->host_key_agent = ((void*)0);
 options->pid_file = ((void*)0);
 options->login_grace_time = -1;
 options->permit_root_login = PERMIT_NOT_SET;
 options->ignore_rhosts = -1;
 options->ignore_user_known_hosts = -1;
 options->print_motd = -1;
 options->print_lastlog = -1;
 options->x11_forwarding = -1;
 options->x11_display_offset = -1;
 options->x11_use_localhost = -1;
 options->permit_tty = -1;
 options->permit_user_rc = -1;
 options->xauth_location = ((void*)0);
 options->strict_modes = -1;
 options->tcp_keep_alive = -1;
 options->log_facility = SYSLOG_FACILITY_NOT_SET;
 options->log_level = SYSLOG_LEVEL_NOT_SET;
 options->hostbased_authentication = -1;
 options->hostbased_uses_name_from_packet_only = -1;
 options->hostbased_key_types = ((void*)0);
 options->hostkeyalgorithms = ((void*)0);
 options->pubkey_authentication = -1;
 options->pubkey_key_types = ((void*)0);
 options->kerberos_authentication = -1;
 options->kerberos_or_local_passwd = -1;
 options->kerberos_ticket_cleanup = -1;
 options->kerberos_get_afs_token = -1;
 options->gss_authentication=-1;
 options->gss_cleanup_creds = -1;
 options->gss_strict_acceptor = -1;
 options->password_authentication = -1;
 options->kbd_interactive_authentication = -1;
 options->challenge_response_authentication = -1;
 options->permit_empty_passwd = -1;
 options->permit_user_env = -1;
 options->permit_user_env_whitelist = ((void*)0);
 options->compression = -1;
 options->rekey_limit = -1;
 options->rekey_interval = -1;
 options->allow_tcp_forwarding = -1;
 options->allow_streamlocal_forwarding = -1;
 options->allow_agent_forwarding = -1;
 options->num_allow_users = 0;
 options->num_deny_users = 0;
 options->num_allow_groups = 0;
 options->num_deny_groups = 0;
 options->ciphers = ((void*)0);
 options->macs = ((void*)0);
 options->kex_algorithms = ((void*)0);
 options->fwd_opts.gateway_ports = -1;
 options->fwd_opts.streamlocal_bind_mask = (mode_t)-1;
 options->fwd_opts.streamlocal_bind_unlink = -1;
 options->num_subsystems = 0;
 options->max_startups_begin = -1;
 options->max_startups_rate = -1;
 options->max_startups = -1;
 options->max_authtries = -1;
 options->max_sessions = -1;
 options->banner = ((void*)0);
 options->use_dns = -1;
 options->client_alive_interval = -1;
 options->client_alive_count_max = -1;
 options->num_authkeys_files = 0;
 options->num_accept_env = 0;
 options->num_setenv = 0;
 options->permit_tun = -1;
 options->permitted_opens = ((void*)0);
 options->permitted_listens = ((void*)0);
 options->adm_forced_command = ((void*)0);
 options->chroot_directory = ((void*)0);
 options->authorized_keys_command = ((void*)0);
 options->authorized_keys_command_user = ((void*)0);
 options->revoked_keys_file = ((void*)0);
 options->trusted_user_ca_keys = ((void*)0);
 options->authorized_principals_file = ((void*)0);
 options->authorized_principals_command = ((void*)0);
 options->authorized_principals_command_user = ((void*)0);
 options->ip_qos_interactive = -1;
 options->ip_qos_bulk = -1;
 options->version_addendum = ((void*)0);
 options->fingerprint_hash = -1;
 options->disable_forwarding = -1;
 options->expose_userauth_info = -1;
 options->use_blacklist = -1;
}
