
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct kex {struct kex* name; struct kex* hostkey_alg; struct kex* failed_choice; struct kex* server_version_string; struct kex* client_version_string; struct kex* session_id; int my; int peer; int ** newkeys; int ec_client_key; int dh; } ;


 int DH_free (int ) ;
 int EC_KEY_free (int ) ;
 size_t MODE_MAX ;
 int free (struct kex*) ;
 int kex_free_newkeys (int *) ;
 int sshbuf_free (int ) ;

void
kex_free(struct kex *kex)
{
 u_int mode;







 for (mode = 0; mode < MODE_MAX; mode++) {
  kex_free_newkeys(kex->newkeys[mode]);
  kex->newkeys[mode] = ((void*)0);
 }
 sshbuf_free(kex->peer);
 sshbuf_free(kex->my);
 free(kex->session_id);
 free(kex->client_version_string);
 free(kex->server_version_string);
 free(kex->failed_choice);
 free(kex->hostkey_alg);
 free(kex->name);
 free(kex);
}
