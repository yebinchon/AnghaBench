
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sshkey {int dummy; } ;
struct ssh {int public_keys; int private_keys; TYPE_1__* kex; } ;
struct key_entry {struct sshkey* key; } ;
struct TYPE_2__ {scalar_t__ server; } ;


 int SSH_ERR_ALLOC_FAIL ;
 int TAILQ_INSERT_TAIL (int *,struct key_entry*,int ) ;
 int free (struct key_entry*) ;
 struct key_entry* malloc (int) ;
 int next ;
 int sshkey_free (struct sshkey*) ;
 int sshkey_from_private (struct sshkey*,struct sshkey**) ;

int
ssh_add_hostkey(struct ssh *ssh, struct sshkey *key)
{
 struct sshkey *pubkey = ((void*)0);
 struct key_entry *k = ((void*)0), *k_prv = ((void*)0);
 int r;

 if (ssh->kex->server) {
  if ((r = sshkey_from_private(key, &pubkey)) != 0)
   return r;
  if ((k = malloc(sizeof(*k))) == ((void*)0) ||
      (k_prv = malloc(sizeof(*k_prv))) == ((void*)0)) {
   free(k);
   sshkey_free(pubkey);
   return SSH_ERR_ALLOC_FAIL;
  }
  k_prv->key = key;
  TAILQ_INSERT_TAIL(&ssh->private_keys, k_prv, next);


  k->key = pubkey;
  TAILQ_INSERT_TAIL(&ssh->public_keys, k, next);
  r = 0;
 } else {
  if ((k = malloc(sizeof(*k))) == ((void*)0))
   return SSH_ERR_ALLOC_FAIL;
  k->key = key;
  TAILQ_INSERT_TAIL(&ssh->public_keys, k, next);
  r = 0;
 }

 return r;
}
