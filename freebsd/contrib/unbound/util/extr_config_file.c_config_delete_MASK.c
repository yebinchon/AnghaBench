#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  first; } ;
struct TYPE_3__ {int /*<<< orphan*/  first; } ;
struct config_file {struct config_file* cachedb_secret; struct config_file* cachedb_backend; int /*<<< orphan*/  ipsecmod_whitelist; struct config_file* ipsecmod_hook; int /*<<< orphan*/  ratelimit_below_domain; int /*<<< orphan*/  ratelimit_for_domain; struct config_file* dnstap_version; struct config_file* dnstap_identity; struct config_file* dnstap_socket_path; int /*<<< orphan*/  dns64_ignore_aaaa; struct config_file* dns64_prefix; struct config_file* control_cert_file; struct config_file* control_key_file; struct config_file* server_cert_file; struct config_file* server_key_file; TYPE_2__ control_ifs; int /*<<< orphan*/  acl_tag_datas; int /*<<< orphan*/  acl_tag_actions; int /*<<< orphan*/  respip_tags; int /*<<< orphan*/  acl_tags; int /*<<< orphan*/  local_zone_tags; int /*<<< orphan*/  num_tags; int /*<<< orphan*/  tagname; int /*<<< orphan*/  local_zone_overrides; int /*<<< orphan*/  local_data; int /*<<< orphan*/  local_zones_nodefault; int /*<<< orphan*/  local_zones; struct config_file* val_nsec3_key_iterations; int /*<<< orphan*/  tcp_connection_limits; int /*<<< orphan*/  acls; int /*<<< orphan*/  dlv_anchor_list; struct config_file* dlv_anchor_file; int /*<<< orphan*/  domain_insecure; int /*<<< orphan*/  trust_anchor_list; int /*<<< orphan*/  trusted_keys_file_list; int /*<<< orphan*/  trust_anchor_file_list; int /*<<< orphan*/  auto_trust_anchor_file_list; int /*<<< orphan*/  private_domain; int /*<<< orphan*/  private_address; int /*<<< orphan*/  caps_whitelist; struct config_file* python_script; struct config_file* outgoing_avail_ports; struct config_file* module_conf; struct config_file* version; struct config_file* identity; int /*<<< orphan*/  client_subnet_zone; int /*<<< orphan*/  client_subnet; int /*<<< orphan*/  root_hints; int /*<<< orphan*/  donotqueryaddrs; int /*<<< orphan*/  views; int /*<<< orphan*/  auths; int /*<<< orphan*/  forwards; int /*<<< orphan*/  stubs; int /*<<< orphan*/  num_out_ifs; int /*<<< orphan*/  out_ifs; int /*<<< orphan*/  num_ifs; int /*<<< orphan*/  ifs; struct config_file* log_identity; struct config_file* tls_ciphersuites; struct config_file* tls_ciphers; TYPE_1__ tls_session_ticket_keys; int /*<<< orphan*/  tls_additional_port; struct config_file* tls_cert_bundle; struct config_file* ssl_service_pem; struct config_file* ssl_service_key; struct config_file* target_fetch_policy; struct config_file* pidfile; struct config_file* logfile; struct config_file* directory; struct config_file* chrootdir; struct config_file* username; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct config_file*) ; 

void 
FUNC9(struct config_file* cfg)
{
	if(!cfg) return;
	FUNC8(cfg->username);
	FUNC8(cfg->chrootdir);
	FUNC8(cfg->directory);
	FUNC8(cfg->logfile);
	FUNC8(cfg->pidfile);
	FUNC8(cfg->target_fetch_policy);
	FUNC8(cfg->ssl_service_key);
	FUNC8(cfg->ssl_service_pem);
	FUNC8(cfg->tls_cert_bundle);
	FUNC4(cfg->tls_additional_port);
	FUNC4(cfg->tls_session_ticket_keys.first);
	FUNC8(cfg->tls_ciphers);
	FUNC8(cfg->tls_ciphersuites);
	FUNC8(cfg->log_identity);
	FUNC0(cfg->ifs, cfg->num_ifs);
	FUNC0(cfg->out_ifs, cfg->num_out_ifs);
	FUNC5(cfg->stubs);
	FUNC5(cfg->forwards);
	FUNC2(cfg->auths);
	FUNC7(cfg->views);
	FUNC4(cfg->donotqueryaddrs);
	FUNC4(cfg->root_hints);
#ifdef CLIENT_SUBNET
	config_delstrlist(cfg->client_subnet);
	config_delstrlist(cfg->client_subnet_zone);
#endif
	FUNC8(cfg->identity);
	FUNC8(cfg->version);
	FUNC8(cfg->module_conf);
	FUNC8(cfg->outgoing_avail_ports);
	FUNC8(cfg->python_script);
	FUNC4(cfg->caps_whitelist);
	FUNC4(cfg->private_address);
	FUNC4(cfg->private_domain);
	FUNC4(cfg->auto_trust_anchor_file_list);
	FUNC4(cfg->trust_anchor_file_list);
	FUNC4(cfg->trusted_keys_file_list);
	FUNC4(cfg->trust_anchor_list);
	FUNC4(cfg->domain_insecure);
	FUNC8(cfg->dlv_anchor_file);
	FUNC4(cfg->dlv_anchor_list);
	FUNC3(cfg->acls);
	FUNC3(cfg->tcp_connection_limits);
	FUNC8(cfg->val_nsec3_key_iterations);
	FUNC3(cfg->local_zones);
	FUNC4(cfg->local_zones_nodefault);
	FUNC4(cfg->local_data);
	FUNC6(cfg->local_zone_overrides);
	FUNC0(cfg->tagname, cfg->num_tags);
	FUNC1(cfg->local_zone_tags);
	FUNC1(cfg->acl_tags);
	FUNC1(cfg->respip_tags);
	FUNC6(cfg->acl_tag_actions);
	FUNC6(cfg->acl_tag_datas);
	FUNC4(cfg->control_ifs.first);
	FUNC8(cfg->server_key_file);
	FUNC8(cfg->server_cert_file);
	FUNC8(cfg->control_key_file);
	FUNC8(cfg->control_cert_file);
	FUNC8(cfg->dns64_prefix);
	FUNC4(cfg->dns64_ignore_aaaa);
	FUNC8(cfg->dnstap_socket_path);
	FUNC8(cfg->dnstap_identity);
	FUNC8(cfg->dnstap_version);
	FUNC3(cfg->ratelimit_for_domain);
	FUNC3(cfg->ratelimit_below_domain);
#ifdef USE_IPSECMOD
	free(cfg->ipsecmod_hook);
	config_delstrlist(cfg->ipsecmod_whitelist);
#endif
#ifdef USE_CACHEDB
	free(cfg->cachedb_backend);
	free(cfg->cachedb_secret);
#endif
	FUNC8(cfg);
}