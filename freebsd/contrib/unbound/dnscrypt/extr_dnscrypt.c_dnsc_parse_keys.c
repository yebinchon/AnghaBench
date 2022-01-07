
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dnsc_env {unsigned int keypairs_count; unsigned int signed_certs_count; TYPE_1__* signed_certs; TYPE_2__* certs; TYPE_3__* keypairs; } ;
struct config_strlist {int str; struct config_strlist* next; } ;
struct config_file {struct config_strlist* dnscrypt_secret_key; } ;
struct TYPE_5__ {int* magic_query; int* es_version; TYPE_3__* keypair; } ;
typedef TYPE_2__ dnsccert ;
struct TYPE_6__ {int crypt_publickey; scalar_t__ crypt_secretkey; } ;
struct TYPE_4__ {int version_major; int magic_query; int server_publickey; } ;
typedef TYPE_3__ KeyPair ;


 int VERB_OPS ;
 int crypto_box_PUBLICKEYBYTES ;
 int crypto_box_SECRETKEYBYTES ;
 scalar_t__ crypto_scalarmult_base (int ,scalar_t__) ;
 char* dnsc_chroot_path (struct config_file*,int ) ;
 int dnsc_key_to_fingerprint (char*,int ) ;
 scalar_t__ dnsc_read_from_file (char*,char*,int ) ;
 int errno ;
 int fatal_exit (char*,...) ;
 int key_get_es_version (int*) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int memcpy (int*,int ,int) ;
 void* sodium_allocarray (unsigned int,int) ;
 int strerror (int ) ;
 int verbose (int ,char*,int ,...) ;

__attribute__((used)) static int
dnsc_parse_keys(struct dnsc_env *env, struct config_file *cfg)
{
 struct config_strlist *head;
 size_t cert_id, keypair_id;
 size_t c;
 char *nm;

 env->keypairs_count = 0U;
 for (head = cfg->dnscrypt_secret_key; head; head = head->next) {
  env->keypairs_count++;
 }

 env->keypairs = sodium_allocarray(env->keypairs_count,
  sizeof *env->keypairs);
 env->certs = sodium_allocarray(env->signed_certs_count,
  sizeof *env->certs);

 cert_id = 0U;
 keypair_id = 0U;
 for(head = cfg->dnscrypt_secret_key; head; head = head->next, keypair_id++) {
  char fingerprint[80];
  int found_cert = 0;
  KeyPair *current_keypair = &env->keypairs[keypair_id];
  nm = dnsc_chroot_path(cfg, head->str);
  if(dnsc_read_from_file(
    nm,
    (char *)(current_keypair->crypt_secretkey),
    crypto_box_SECRETKEYBYTES) != 0) {
   fatal_exit("dnsc_parse_keys: failed to load %s: %s", head->str, strerror(errno));
  }
  verbose(VERB_OPS, "Loaded key %s", head->str);
  if (crypto_scalarmult_base(current_keypair->crypt_publickey,
   current_keypair->crypt_secretkey) != 0) {
   fatal_exit("dnsc_parse_keys: could not generate public key from %s", head->str);
  }
  dnsc_key_to_fingerprint(fingerprint, current_keypair->crypt_publickey);
  verbose(VERB_OPS, "Crypt public key fingerprint for %s: %s", head->str, fingerprint);

  for(c = 0; c < env->signed_certs_count; c++) {
   if(memcmp(current_keypair->crypt_publickey,
    env->signed_certs[c].server_publickey,
    crypto_box_PUBLICKEYBYTES) == 0) {
    dnsccert *current_cert = &env->certs[cert_id++];
    found_cert = 1;
    current_cert->keypair = current_keypair;
    memcpy(current_cert->magic_query,
           env->signed_certs[c].magic_query,
     sizeof env->signed_certs[c].magic_query);
    memcpy(current_cert->es_version,
           env->signed_certs[c].version_major,
           sizeof env->signed_certs[c].version_major
    );
    dnsc_key_to_fingerprint(fingerprint,
       current_cert->keypair->crypt_publickey);
    verbose(VERB_OPS, "Crypt public key fingerprint for %s: %s",
     head->str, fingerprint);
    verbose(VERB_OPS, "Using %s",
     key_get_es_version(current_cert->es_version));

    if (current_cert->es_version[1] == 0x02) {
        fatal_exit("Certificate for XChacha20 but libsodium does not support it.");
    }


              }
         }
  if (!found_cert) {
      fatal_exit("dnsc_parse_keys: could not match certificate for key "
          "%s. Unable to determine ES version.",
          head->str);
  }
 }
 return cert_id;
}
