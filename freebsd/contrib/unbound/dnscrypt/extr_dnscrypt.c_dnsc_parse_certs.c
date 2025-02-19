
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dnsc_env {unsigned int signed_certs_count; unsigned int rotated_certs_count; void* signed_certs; void** rotated_certs; } ;
struct config_strlist {int str; struct config_strlist* next; } ;
struct config_file {struct config_strlist* dnscrypt_provider_cert_rotated; struct config_strlist* dnscrypt_provider_cert; } ;
struct SignedCert {int dummy; } ;


 int VERB_OPS ;
 char* dnsc_chroot_path (struct config_file*,int ) ;
 scalar_t__ dnsc_read_from_file (char*,char*,int) ;
 int errno ;
 int fatal_exit (char*,int ,int ) ;
 void* sodium_allocarray (unsigned int,int) ;
 scalar_t__ strcmp (int ,int ) ;
 int strerror (int ) ;
 int verbose (int ,char*,int ) ;

__attribute__((used)) static int
dnsc_parse_certs(struct dnsc_env *env, struct config_file *cfg)
{
 struct config_strlist *head, *head2;
 size_t signed_cert_id;
 size_t rotated_cert_id;
 char *nm;

 env->signed_certs_count = 0U;
 env->rotated_certs_count = 0U;
 for (head = cfg->dnscrypt_provider_cert; head; head = head->next) {
  env->signed_certs_count++;
 }
 for (head = cfg->dnscrypt_provider_cert_rotated; head; head = head->next) {
  env->rotated_certs_count++;
 }
 env->signed_certs = sodium_allocarray(env->signed_certs_count,
            sizeof *env->signed_certs);

 env->rotated_certs = sodium_allocarray(env->rotated_certs_count,
            sizeof env->signed_certs);
 signed_cert_id = 0U;
 rotated_cert_id = 0U;
 for(head = cfg->dnscrypt_provider_cert; head; head = head->next, signed_cert_id++) {
  nm = dnsc_chroot_path(cfg, head->str);
  if(dnsc_read_from_file(
    nm,
    (char *)(env->signed_certs + signed_cert_id),
    sizeof(struct SignedCert)) != 0) {
   fatal_exit("dnsc_parse_certs: failed to load %s: %s", head->str, strerror(errno));
  }
  for(head2 = cfg->dnscrypt_provider_cert_rotated; head2; head2 = head2->next) {
   if(strcmp(head->str, head2->str) == 0) {
    *(env->rotated_certs + rotated_cert_id) = env->signed_certs + signed_cert_id;
    rotated_cert_id++;
    verbose(VERB_OPS, "Cert %s is rotated and will not be distributed via DNS", head->str);
    break;
   }
  }
  verbose(VERB_OPS, "Loaded cert %s", head->str);
 }
 return signed_cert_id;
}
