
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {int dummy; } ;
struct kex {int server_version_string; int client_version_string; int flags; int peer; int my; int kex_type; int hostkey_nid; int hostkey_type; int hostkey_alg; int we_need; int session_id_len; int session_id; } ;


 int sshbuf_put_cstring (struct sshbuf*,int ) ;
 int sshbuf_put_string (struct sshbuf*,int ,int ) ;
 int sshbuf_put_stringb (struct sshbuf*,int ) ;
 int sshbuf_put_u32 (struct sshbuf*,int ) ;

__attribute__((used)) static int
kex_to_blob(struct sshbuf *m, struct kex *kex)
{
 int r;

 if ((r = sshbuf_put_string(m, kex->session_id,
     kex->session_id_len)) != 0 ||
     (r = sshbuf_put_u32(m, kex->we_need)) != 0 ||
     (r = sshbuf_put_cstring(m, kex->hostkey_alg)) != 0 ||
     (r = sshbuf_put_u32(m, kex->hostkey_type)) != 0 ||
     (r = sshbuf_put_u32(m, kex->hostkey_nid)) != 0 ||
     (r = sshbuf_put_u32(m, kex->kex_type)) != 0 ||
     (r = sshbuf_put_stringb(m, kex->my)) != 0 ||
     (r = sshbuf_put_stringb(m, kex->peer)) != 0 ||
     (r = sshbuf_put_u32(m, kex->flags)) != 0 ||
     (r = sshbuf_put_cstring(m, kex->client_version_string)) != 0 ||
     (r = sshbuf_put_cstring(m, kex->server_version_string)) != 0)
  return r;
 return 0;
}
