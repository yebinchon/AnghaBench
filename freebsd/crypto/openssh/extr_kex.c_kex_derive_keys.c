
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct sshbuf {int dummy; } ;
struct ssh {struct kex* kex; } ;
struct kex {TYPE_3__** newkeys; scalar_t__ server; int we_need; } ;
struct TYPE_5__ {int * key; } ;
struct TYPE_4__ {int * key; int * iv; } ;
struct TYPE_6__ {TYPE_2__ mac; TYPE_1__ enc; } ;


 int MODE_IN ;
 int MODE_MAX ;
 int MODE_OUT ;
 int NKEYS ;
 int derive_key (struct ssh*,char,int ,int *,int,struct sshbuf const*,int **) ;
 int free (int *) ;

int
kex_derive_keys(struct ssh *ssh, u_char *hash, u_int hashlen,
    const struct sshbuf *shared_secret)
{
 struct kex *kex = ssh->kex;
 u_char *keys[NKEYS];
 u_int i, j, mode, ctos;
 int r;

 for (i = 0; i < NKEYS; i++) {
  if ((r = derive_key(ssh, 'A'+i, kex->we_need, hash, hashlen,
      shared_secret, &keys[i])) != 0) {
   for (j = 0; j < i; j++)
    free(keys[j]);
   return r;
  }
 }
 for (mode = 0; mode < MODE_MAX; mode++) {
  ctos = (!kex->server && mode == MODE_OUT) ||
      (kex->server && mode == MODE_IN);
  kex->newkeys[mode]->enc.iv = keys[ctos ? 0 : 1];
  kex->newkeys[mode]->enc.key = keys[ctos ? 2 : 3];
  kex->newkeys[mode]->mac.key = keys[ctos ? 4 : 5];
 }
 return 0;
}
