
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sshbuf {int dummy; } ;
struct kex {int server; int done; int * peer; int * my; int server_version_string; int client_version_string; int flags; int kex_type; int hostkey_nid; int hostkey_type; int hostkey_alg; int we_need; int session_id_len; int session_id; } ;


 int SSH_ERR_ALLOC_FAIL ;
 struct kex* calloc (int,int) ;
 int free (struct kex*) ;
 int sshbuf_free (int *) ;
 int sshbuf_get_cstring (struct sshbuf*,int *,int *) ;
 int sshbuf_get_string (struct sshbuf*,int *,int *) ;
 int sshbuf_get_stringb (struct sshbuf*,int *) ;
 int sshbuf_get_u32 (struct sshbuf*,int *) ;
 void* sshbuf_new () ;

__attribute__((used)) static int
kex_from_blob(struct sshbuf *m, struct kex **kexp)
{
 struct kex *kex;
 int r;

 if ((kex = calloc(1, sizeof(struct kex))) == ((void*)0) ||
     (kex->my = sshbuf_new()) == ((void*)0) ||
     (kex->peer = sshbuf_new()) == ((void*)0)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 if ((r = sshbuf_get_string(m, &kex->session_id, &kex->session_id_len)) != 0 ||
     (r = sshbuf_get_u32(m, &kex->we_need)) != 0 ||
     (r = sshbuf_get_cstring(m, &kex->hostkey_alg, ((void*)0))) != 0 ||
     (r = sshbuf_get_u32(m, (u_int *)&kex->hostkey_type)) != 0 ||
     (r = sshbuf_get_u32(m, (u_int *)&kex->hostkey_nid)) != 0 ||
     (r = sshbuf_get_u32(m, &kex->kex_type)) != 0 ||
     (r = sshbuf_get_stringb(m, kex->my)) != 0 ||
     (r = sshbuf_get_stringb(m, kex->peer)) != 0 ||
     (r = sshbuf_get_u32(m, &kex->flags)) != 0 ||
     (r = sshbuf_get_cstring(m, &kex->client_version_string, ((void*)0))) != 0 ||
     (r = sshbuf_get_cstring(m, &kex->server_version_string, ((void*)0))) != 0)
  goto out;
 kex->server = 1;
 kex->done = 1;
 r = 0;
 out:
 if (r != 0 || kexp == ((void*)0)) {
  if (kex != ((void*)0)) {
   sshbuf_free(kex->my);
   sshbuf_free(kex->peer);
   free(kex);
  }
  if (kexp != ((void*)0))
   *kexp = ((void*)0);
 } else {
  *kexp = kex;
 }
 return r;
}
