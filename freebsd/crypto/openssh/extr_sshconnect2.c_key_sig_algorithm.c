
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sshkey {scalar_t__ type; } ;
struct ssh {TYPE_1__* kex; } ;
struct TYPE_4__ {char* pubkey_key_types; } ;
struct TYPE_3__ {char* server_sig_algs; } ;


 scalar_t__ KEY_RSA ;
 scalar_t__ KEY_RSA_CERT ;
 int free (char*) ;
 char* match_list (int ,char*,int *) ;
 TYPE_2__ options ;
 int sshkey_sigalg_by_name (char*) ;
 int sshkey_ssh_name (struct sshkey const*) ;
 scalar_t__ sshkey_type_from_name (char*) ;
 char* strsep (char**,char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *
key_sig_algorithm(struct ssh *ssh, const struct sshkey *key)
{
 char *allowed, *oallowed, *cp, *tmp, *alg = ((void*)0);






 if (ssh == ((void*)0) || ssh->kex->server_sig_algs == ((void*)0) ||
     (key->type != KEY_RSA && key->type != KEY_RSA_CERT)) {

  return match_list(sshkey_ssh_name(key),
      options.pubkey_key_types, ((void*)0));
 }







 oallowed = allowed = xstrdup(options.pubkey_key_types);
 while ((cp = strsep(&allowed, ",")) != ((void*)0)) {
  if (sshkey_type_from_name(cp) != key->type)
   continue;
  tmp = match_list(sshkey_sigalg_by_name(cp), ssh->kex->server_sig_algs, ((void*)0));
  if (tmp != ((void*)0))
   alg = xstrdup(cp);
  free(tmp);
  if (alg != ((void*)0))
   break;
 }
 free(oallowed);
 return alg;
}
