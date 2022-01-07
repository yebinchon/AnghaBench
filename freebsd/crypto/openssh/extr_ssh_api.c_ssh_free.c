
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* kex; int private_keys; int key; int public_keys; } ;
struct key_entry {TYPE_1__* kex; int private_keys; int key; int public_keys; } ;
struct TYPE_2__ {scalar_t__ server; } ;


 struct ssh* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct ssh*,int ) ;
 int free (struct ssh*) ;
 int kex_free (TYPE_1__*) ;
 int next ;
 int ssh_packet_close (struct ssh*) ;
 int sshkey_free (int ) ;

void
ssh_free(struct ssh *ssh)
{
 struct key_entry *k;

 ssh_packet_close(ssh);




 while ((k = TAILQ_FIRST(&ssh->public_keys)) != ((void*)0)) {
  TAILQ_REMOVE(&ssh->public_keys, k, next);
  if (ssh->kex && ssh->kex->server)
   sshkey_free(k->key);
  free(k);
 }
 while ((k = TAILQ_FIRST(&ssh->private_keys)) != ((void*)0)) {
  TAILQ_REMOVE(&ssh->private_keys, k, next);
  free(k);
 }
 if (ssh->kex)
  kex_free(ssh->kex);
 free(ssh);
}
