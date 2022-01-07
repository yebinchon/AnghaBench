
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection_params {int ca_cert_id; int cert_id; int key_id; int pin; int engine_id; int engine; int domain_match; int suffix_match; int check_cert_subject; int altsubject_match; int subject_match; int dh_file; int private_key_passwd; int private_key; int client_cert; int ca_path; int ca_cert; } ;
struct eap_peer_config {int phase2; int ca_cert2_id; int cert2_id; int key2_id; int pin2; int engine2_id; int engine2; int domain_match2; int domain_suffix_match2; int check_cert_subject2; int altsubject_match2; int subject_match2; int dh_file2; int private_key2_passwd; int private_key2; int client_cert2; int ca_path2; int ca_cert2; } ;


 int eap_tls_params_flags (struct tls_connection_params*,int ) ;

__attribute__((used)) static void eap_tls_params_from_conf2(struct tls_connection_params *params,
          struct eap_peer_config *config)
{
 params->ca_cert = config->ca_cert2;
 params->ca_path = config->ca_path2;
 params->client_cert = config->client_cert2;
 params->private_key = config->private_key2;
 params->private_key_passwd = config->private_key2_passwd;
 params->dh_file = config->dh_file2;
 params->subject_match = config->subject_match2;
 params->altsubject_match = config->altsubject_match2;
 params->check_cert_subject = config->check_cert_subject2;
 params->suffix_match = config->domain_suffix_match2;
 params->domain_match = config->domain_match2;
 params->engine = config->engine2;
 params->engine_id = config->engine2_id;
 params->pin = config->pin2;
 params->key_id = config->key2_id;
 params->cert_id = config->cert2_id;
 params->ca_cert_id = config->ca_cert2_id;
 eap_tls_params_flags(params, config->phase2);
}
