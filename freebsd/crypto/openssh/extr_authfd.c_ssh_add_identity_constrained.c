
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct sshkey {int type; } ;
struct sshbuf {int dummy; } ;
 int SSH2_AGENTC_ADD_IDENTITY ;
 int SSH2_AGENTC_ADD_ID_CONSTRAINED ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int decode_reply (int ) ;
 int encode_constraints (struct sshbuf*,int ,int ,int ) ;
 int ssh_request_reply (int,struct sshbuf*,struct sshbuf*) ;
 int sshbuf_free (struct sshbuf*) ;
 int sshbuf_get_u8 (struct sshbuf*,int *) ;
 struct sshbuf* sshbuf_new () ;
 int sshbuf_put_cstring (struct sshbuf*,char const*) ;
 int sshbuf_put_u8 (struct sshbuf*,int ) ;
 int sshkey_private_serialize_maxsign (struct sshkey const*,struct sshbuf*,int ,int *) ;

int
ssh_add_identity_constrained(int sock, const struct sshkey *key,
    const char *comment, u_int life, u_int confirm, u_int maxsign)
{
 struct sshbuf *msg;
 int r, constrained = (life || confirm || maxsign);
 u_char type;

 if ((msg = sshbuf_new()) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;

 switch (key->type) {
 case 133:
 case 132:
 case 129:
 case 128:
  type = constrained ?
      SSH2_AGENTC_ADD_ID_CONSTRAINED :
      SSH2_AGENTC_ADD_IDENTITY;
  if ((r = sshbuf_put_u8(msg, type)) != 0 ||
      (r = sshkey_private_serialize_maxsign(key, msg, maxsign,
      ((void*)0))) != 0 ||
      (r = sshbuf_put_cstring(msg, comment)) != 0)
   goto out;
  break;
 default:
  r = SSH_ERR_INVALID_ARGUMENT;
  goto out;
 }
 if (constrained &&
     (r = encode_constraints(msg, life, confirm, maxsign)) != 0)
  goto out;
 if ((r = ssh_request_reply(sock, msg, msg)) != 0)
  goto out;
 if ((r = sshbuf_get_u8(msg, &type)) != 0)
  goto out;
 r = decode_reply(type);
 out:
 sshbuf_free(msg);
 return r;
}
