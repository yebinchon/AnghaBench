
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
struct pam_ssh_key {char* comment; struct sshkey* key; } ;
typedef int fn ;


 int PAM_LOG_DEBUG ;
 int PATH_MAX ;
 int free (char*) ;
 struct pam_ssh_key* malloc (int) ;
 int openpam_log (int ,char*,char*,...) ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 int sshkey_free (struct sshkey*) ;
 int sshkey_load_private (char*,char const*,struct sshkey**,char**) ;

__attribute__((used)) static struct pam_ssh_key *
pam_ssh_load_key(const char *dir, const char *kfn, const char *passphrase,
    int nullok)
{
 char fn[PATH_MAX];
 struct pam_ssh_key *psk;
 struct sshkey *key;
 char *comment;
 int ret;

 if (snprintf(fn, sizeof(fn), "%s/%s", dir, kfn) > (int)sizeof(fn))
  return (((void*)0));
 ret = sshkey_load_private(fn, "", &key, &comment);
 if (ret == 0 && !(*passphrase == '\0' && nullok)) {
  sshkey_free(key);
  return (((void*)0));
 }
 if (ret != 0)
  ret = sshkey_load_private(fn, passphrase, &key, &comment);
 if (ret != 0) {
  openpam_log(PAM_LOG_DEBUG, "failed to load key from %s", fn);
  return (((void*)0));
 }

 openpam_log(PAM_LOG_DEBUG, "loaded '%s' from %s", comment, fn);
 if ((psk = malloc(sizeof(*psk))) == ((void*)0)) {
  sshkey_free(key);
  free(comment);
  return (((void*)0));
 }
 psk->key = key;
 psk->comment = comment;
 return (psk);
}
