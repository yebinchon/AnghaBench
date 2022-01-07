
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct sshmac {size_t key_len; int key; int enabled; int name; } ;
struct sshenc {size_t key_len; size_t iv_len; int * cipher; int name; int iv; int key; int block_size; int enabled; } ;
struct sshcomp {int name; int type; } ;
struct sshbuf {int dummy; } ;
struct ssh {TYPE_1__* kex; } ;
struct newkeys {struct sshcomp comp; struct sshmac mac; struct sshenc enc; } ;
struct TYPE_2__ {struct newkeys** newkeys; } ;


 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INVALID_FORMAT ;
 struct newkeys* calloc (int,int) ;
 scalar_t__ cipher_authlen (int *) ;
 int * cipher_by_name (int ) ;
 int free (struct newkeys*) ;
 int mac_setup (struct sshmac*,int ) ;
 int sshbuf_dump (struct sshbuf*,int ) ;
 int sshbuf_free (struct sshbuf*) ;
 int sshbuf_froms (struct sshbuf*,struct sshbuf**) ;
 int sshbuf_get_cstring (struct sshbuf*,int *,int *) ;
 int sshbuf_get_string (struct sshbuf*,int *,size_t*) ;
 int sshbuf_get_u32 (struct sshbuf*,int *) ;
 scalar_t__ sshbuf_len (struct sshbuf*) ;
 int stderr ;

__attribute__((used)) static int
newkeys_from_blob(struct sshbuf *m, struct ssh *ssh, int mode)
{
 struct sshbuf *b = ((void*)0);
 struct sshcomp *comp;
 struct sshenc *enc;
 struct sshmac *mac;
 struct newkeys *newkey = ((void*)0);
 size_t keylen, ivlen, maclen;
 int r;

 if ((newkey = calloc(1, sizeof(*newkey))) == ((void*)0)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 if ((r = sshbuf_froms(m, &b)) != 0)
  goto out;



 enc = &newkey->enc;
 mac = &newkey->mac;
 comp = &newkey->comp;

 if ((r = sshbuf_get_cstring(b, &enc->name, ((void*)0))) != 0 ||
     (r = sshbuf_get_u32(b, (u_int *)&enc->enabled)) != 0 ||
     (r = sshbuf_get_u32(b, &enc->block_size)) != 0 ||
     (r = sshbuf_get_string(b, &enc->key, &keylen)) != 0 ||
     (r = sshbuf_get_string(b, &enc->iv, &ivlen)) != 0)
  goto out;
 if ((enc->cipher = cipher_by_name(enc->name)) == ((void*)0)) {
  r = SSH_ERR_INVALID_FORMAT;
  goto out;
 }
 if (cipher_authlen(enc->cipher) == 0) {
  if ((r = sshbuf_get_cstring(b, &mac->name, ((void*)0))) != 0)
   goto out;
  if ((r = mac_setup(mac, mac->name)) != 0)
   goto out;
  if ((r = sshbuf_get_u32(b, (u_int *)&mac->enabled)) != 0 ||
      (r = sshbuf_get_string(b, &mac->key, &maclen)) != 0)
   goto out;
  if (maclen > mac->key_len) {
   r = SSH_ERR_INVALID_FORMAT;
   goto out;
  }
  mac->key_len = maclen;
 }
 if ((r = sshbuf_get_u32(b, &comp->type)) != 0 ||
     (r = sshbuf_get_cstring(b, &comp->name, ((void*)0))) != 0)
  goto out;
 if (sshbuf_len(b) != 0) {
  r = SSH_ERR_INVALID_FORMAT;
  goto out;
 }
 enc->key_len = keylen;
 enc->iv_len = ivlen;
 ssh->kex->newkeys[mode] = newkey;
 newkey = ((void*)0);
 r = 0;
 out:
 free(newkey);
 sshbuf_free(b);
 return r;
}
