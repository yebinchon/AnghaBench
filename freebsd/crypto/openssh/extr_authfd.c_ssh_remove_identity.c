
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshkey {scalar_t__ type; } ;
struct sshbuf {int dummy; } ;


 scalar_t__ KEY_UNSPEC ;
 int SSH2_AGENTC_REMOVE_IDENTITY ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int decode_reply (int ) ;
 int explicit_bzero (int *,size_t) ;
 int free (int *) ;
 int ssh_request_reply (int,struct sshbuf*,struct sshbuf*) ;
 int sshbuf_free (struct sshbuf*) ;
 int sshbuf_get_u8 (struct sshbuf*,int *) ;
 struct sshbuf* sshbuf_new () ;
 int sshbuf_put_string (struct sshbuf*,int *,size_t) ;
 int sshbuf_put_u8 (struct sshbuf*,int ) ;
 int sshkey_to_blob (struct sshkey*,int **,size_t*) ;

int
ssh_remove_identity(int sock, struct sshkey *key)
{
 struct sshbuf *msg;
 int r;
 u_char type, *blob = ((void*)0);
 size_t blen;

 if ((msg = sshbuf_new()) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;

 if (key->type != KEY_UNSPEC) {
  if ((r = sshkey_to_blob(key, &blob, &blen)) != 0)
   goto out;
  if ((r = sshbuf_put_u8(msg,
      SSH2_AGENTC_REMOVE_IDENTITY)) != 0 ||
      (r = sshbuf_put_string(msg, blob, blen)) != 0)
   goto out;
 } else {
  r = SSH_ERR_INVALID_ARGUMENT;
  goto out;
 }
 if ((r = ssh_request_reply(sock, msg, msg)) != 0)
  goto out;
 if ((r = sshbuf_get_u8(msg, &type)) != 0)
  goto out;
 r = decode_reply(type);
 out:
 if (blob != ((void*)0)) {
  explicit_bzero(blob, blen);
  free(blob);
 }
 sshbuf_free(msg);
 return r;
}
