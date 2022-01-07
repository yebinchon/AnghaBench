
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sshkey {TYPE_1__* cert; } ;
struct TYPE_7__ {int fingerprint_hash; } ;
struct TYPE_6__ {char* auth_method_info; struct sshkey* auth_method_key; } ;
struct TYPE_5__ {struct sshkey const* signature_key; scalar_t__ serial; int key_id; } ;
typedef TYPE_2__ Authctxt ;


 int SSH_FP_DEFAULT ;
 int free (char*) ;
 TYPE_3__ options ;
 char* sshkey_fingerprint (struct sshkey const*,int ,int ) ;
 scalar_t__ sshkey_is_cert (struct sshkey const*) ;
 int sshkey_type (struct sshkey const*) ;
 int xasprintf (char**,char*,int ,char*,...) ;

__attribute__((used)) static char *
format_method_key(Authctxt *authctxt)
{
 const struct sshkey *key = authctxt->auth_method_key;
 const char *methinfo = authctxt->auth_method_info;
 char *fp, *ret = ((void*)0);

 if (key == ((void*)0))
  return ((void*)0);

 if (sshkey_is_cert(key)) {
  fp = sshkey_fingerprint(key->cert->signature_key,
      options.fingerprint_hash, SSH_FP_DEFAULT);
  xasprintf(&ret, "%s ID %s (serial %llu) CA %s %s%s%s",
      sshkey_type(key), key->cert->key_id,
      (unsigned long long)key->cert->serial,
      sshkey_type(key->cert->signature_key),
      fp == ((void*)0) ? "(null)" : fp,
      methinfo == ((void*)0) ? "" : ", ",
      methinfo == ((void*)0) ? "" : methinfo);
  free(fp);
 } else {
  fp = sshkey_fingerprint(key, options.fingerprint_hash,
      SSH_FP_DEFAULT);
  xasprintf(&ret, "%s %s%s%s", sshkey_type(key),
      fp == ((void*)0) ? "(null)" : fp,
      methinfo == ((void*)0) ? "" : ", ",
      methinfo == ((void*)0) ? "" : methinfo);
  free(fp);
 }
 return ret;
}
