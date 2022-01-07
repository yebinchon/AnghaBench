
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int first; } ;
struct TYPE_3__ {int first; } ;
struct config_file {struct config_file* cachedb_secret; struct config_file* cachedb_backend; int ipsecmod_whitelist; struct config_file* ipsecmod_hook; int ratelimit_below_domain; int ratelimit_for_domain; struct config_file* dnstap_version; struct config_file* dnstap_identity; struct config_file* dnstap_socket_path; int dns64_ignore_aaaa; struct config_file* dns64_prefix; struct config_file* control_cert_file; struct config_file* control_key_file; struct config_file* server_cert_file; struct config_file* server_key_file; TYPE_2__ control_ifs; int acl_tag_datas; int acl_tag_actions; int respip_tags; int acl_tags; int local_zone_tags; int num_tags; int tagname; int local_zone_overrides; int local_data; int local_zones_nodefault; int local_zones; struct config_file* val_nsec3_key_iterations; int tcp_connection_limits; int acls; int dlv_anchor_list; struct config_file* dlv_anchor_file; int domain_insecure; int trust_anchor_list; int trusted_keys_file_list; int trust_anchor_file_list; int auto_trust_anchor_file_list; int private_domain; int private_address; int caps_whitelist; struct config_file* python_script; struct config_file* outgoing_avail_ports; struct config_file* module_conf; struct config_file* version; struct config_file* identity; int client_subnet_zone; int client_subnet; int root_hints; int donotqueryaddrs; int views; int auths; int forwards; int stubs; int num_out_ifs; int out_ifs; int num_ifs; int ifs; struct config_file* log_identity; struct config_file* tls_ciphersuites; struct config_file* tls_ciphers; TYPE_1__ tls_session_ticket_keys; int tls_additional_port; struct config_file* tls_cert_bundle; struct config_file* ssl_service_pem; struct config_file* ssl_service_key; struct config_file* target_fetch_policy; struct config_file* pidfile; struct config_file* logfile; struct config_file* directory; struct config_file* chrootdir; struct config_file* username; } ;


 int config_del_strarray (int ,int ) ;
 int config_del_strbytelist (int ) ;
 int config_delauths (int ) ;
 int config_deldblstrlist (int ) ;
 int config_delstrlist (int ) ;
 int config_delstubs (int ) ;
 int config_deltrplstrlist (int ) ;
 int config_delviews (int ) ;
 int free (struct config_file*) ;

void
config_delete(struct config_file* cfg)
{
 if(!cfg) return;
 free(cfg->username);
 free(cfg->chrootdir);
 free(cfg->directory);
 free(cfg->logfile);
 free(cfg->pidfile);
 free(cfg->target_fetch_policy);
 free(cfg->ssl_service_key);
 free(cfg->ssl_service_pem);
 free(cfg->tls_cert_bundle);
 config_delstrlist(cfg->tls_additional_port);
 config_delstrlist(cfg->tls_session_ticket_keys.first);
 free(cfg->tls_ciphers);
 free(cfg->tls_ciphersuites);
 free(cfg->log_identity);
 config_del_strarray(cfg->ifs, cfg->num_ifs);
 config_del_strarray(cfg->out_ifs, cfg->num_out_ifs);
 config_delstubs(cfg->stubs);
 config_delstubs(cfg->forwards);
 config_delauths(cfg->auths);
 config_delviews(cfg->views);
 config_delstrlist(cfg->donotqueryaddrs);
 config_delstrlist(cfg->root_hints);




 free(cfg->identity);
 free(cfg->version);
 free(cfg->module_conf);
 free(cfg->outgoing_avail_ports);
 free(cfg->python_script);
 config_delstrlist(cfg->caps_whitelist);
 config_delstrlist(cfg->private_address);
 config_delstrlist(cfg->private_domain);
 config_delstrlist(cfg->auto_trust_anchor_file_list);
 config_delstrlist(cfg->trust_anchor_file_list);
 config_delstrlist(cfg->trusted_keys_file_list);
 config_delstrlist(cfg->trust_anchor_list);
 config_delstrlist(cfg->domain_insecure);
 free(cfg->dlv_anchor_file);
 config_delstrlist(cfg->dlv_anchor_list);
 config_deldblstrlist(cfg->acls);
 config_deldblstrlist(cfg->tcp_connection_limits);
 free(cfg->val_nsec3_key_iterations);
 config_deldblstrlist(cfg->local_zones);
 config_delstrlist(cfg->local_zones_nodefault);
 config_delstrlist(cfg->local_data);
 config_deltrplstrlist(cfg->local_zone_overrides);
 config_del_strarray(cfg->tagname, cfg->num_tags);
 config_del_strbytelist(cfg->local_zone_tags);
 config_del_strbytelist(cfg->acl_tags);
 config_del_strbytelist(cfg->respip_tags);
 config_deltrplstrlist(cfg->acl_tag_actions);
 config_deltrplstrlist(cfg->acl_tag_datas);
 config_delstrlist(cfg->control_ifs.first);
 free(cfg->server_key_file);
 free(cfg->server_cert_file);
 free(cfg->control_key_file);
 free(cfg->control_cert_file);
 free(cfg->dns64_prefix);
 config_delstrlist(cfg->dns64_ignore_aaaa);
 free(cfg->dnstap_socket_path);
 free(cfg->dnstap_identity);
 free(cfg->dnstap_version);
 config_deldblstrlist(cfg->ratelimit_for_domain);
 config_deldblstrlist(cfg->ratelimit_below_domain);
 free(cfg);
}
