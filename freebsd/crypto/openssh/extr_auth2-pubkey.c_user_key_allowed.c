
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct sshkey {TYPE_1__* cert; } ;
struct sshauthopt {int dummy; } ;
struct ssh {int dummy; } ;
struct passwd {int dummy; } ;
struct TYPE_4__ {size_t num_authkeys_files; int * authorized_keys_files; } ;
struct TYPE_3__ {struct sshkey* signature_key; } ;


 scalar_t__ auth_key_is_revoked (struct sshkey*) ;
 char* expand_authorized_keys (int ,struct passwd*) ;
 int free (char*) ;
 TYPE_2__ options ;
 int sshauthopt_free (struct sshauthopt*) ;
 scalar_t__ sshkey_is_cert (struct sshkey*) ;
 scalar_t__ strcasecmp (int ,char*) ;
 size_t user_cert_trusted_ca (struct ssh*,struct passwd*,struct sshkey*,struct sshauthopt**) ;
 size_t user_key_allowed2 (struct ssh*,struct passwd*,struct sshkey*,char*,struct sshauthopt**) ;
 size_t user_key_command_allowed2 (struct ssh*,struct passwd*,struct sshkey*,struct sshauthopt**) ;

int
user_key_allowed(struct ssh *ssh, struct passwd *pw, struct sshkey *key,
    int auth_attempt, struct sshauthopt **authoptsp)
{
 u_int success, i;
 char *file;
 struct sshauthopt *opts = ((void*)0);
 if (authoptsp != ((void*)0))
  *authoptsp = ((void*)0);

 if (auth_key_is_revoked(key))
  return 0;
 if (sshkey_is_cert(key) &&
     auth_key_is_revoked(key->cert->signature_key))
  return 0;

 if ((success = user_cert_trusted_ca(ssh, pw, key, &opts)) != 0)
  goto out;
 sshauthopt_free(opts);
 opts = ((void*)0);

 if ((success = user_key_command_allowed2(ssh, pw, key, &opts)) != 0)
  goto out;
 sshauthopt_free(opts);
 opts = ((void*)0);

 for (i = 0; !success && i < options.num_authkeys_files; i++) {
  if (strcasecmp(options.authorized_keys_files[i], "none") == 0)
   continue;
  file = expand_authorized_keys(
      options.authorized_keys_files[i], pw);
  success = user_key_allowed2(ssh, pw, key, file, &opts);
  free(file);
 }

 out:
 if (success && authoptsp != ((void*)0)) {
  *authoptsp = opts;
  opts = ((void*)0);
 }
 sshauthopt_free(opts);
 return success;
}
