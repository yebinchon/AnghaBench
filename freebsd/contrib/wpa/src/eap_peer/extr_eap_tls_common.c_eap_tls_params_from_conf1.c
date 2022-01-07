
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection_params {int ca_cert_id; int cert_id; int key_id; int pin; int engine_id; int engine; int domain_match; int suffix_match; int check_cert_subject; int altsubject_match; int subject_match; int dh_file; int private_key_passwd; int private_key; int client_cert; int ca_path; int ca_cert; } ;
struct eap_peer_config {int phase1; int ca_cert_id; int cert_id; int key_id; int pin; int engine_id; int engine; int domain_match; int domain_suffix_match; int check_cert_subject; int altsubject_match; int subject_match; int dh_file; int private_key_passwd; int private_key; int client_cert; int ca_path; int ca_cert; } ;


 int eap_tls_params_flags (struct tls_connection_params*,int ) ;

__attribute__((used)) static void eap_tls_params_from_conf1(struct tls_connection_params *params,
          struct eap_peer_config *config)
{
 params->ca_cert = config->ca_cert;
 params->ca_path = config->ca_path;
 params->client_cert = config->client_cert;
 params->private_key = config->private_key;
 params->private_key_passwd = config->private_key_passwd;
 params->dh_file = config->dh_file;
 params->subject_match = config->subject_match;
 params->altsubject_match = config->altsubject_match;
 params->check_cert_subject = config->check_cert_subject;
 params->suffix_match = config->domain_suffix_match;
 params->domain_match = config->domain_match;
 params->engine = config->engine;
 params->engine_id = config->engine_id;
 params->pin = config->pin;
 params->key_id = config->key_id;
 params->cert_id = config->cert_id;
 params->ca_cert_id = config->ca_cert_id;
 eap_tls_params_flags(params, config->phase1);
}
