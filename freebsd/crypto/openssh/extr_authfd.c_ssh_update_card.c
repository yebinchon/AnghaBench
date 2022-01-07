
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct sshbuf {int dummy; } ;


 int SSH_AGENTC_ADD_SMARTCARD_KEY ;
 int SSH_AGENTC_ADD_SMARTCARD_KEY_CONSTRAINED ;
 int SSH_AGENTC_REMOVE_SMARTCARD_KEY ;
 int SSH_ERR_ALLOC_FAIL ;
 int decode_reply (int ) ;
 int encode_constraints (struct sshbuf*,int ,int ,int ) ;
 int ssh_request_reply (int,struct sshbuf*,struct sshbuf*) ;
 int sshbuf_free (struct sshbuf*) ;
 int sshbuf_get_u8 (struct sshbuf*,int *) ;
 struct sshbuf* sshbuf_new () ;
 int sshbuf_put_cstring (struct sshbuf*,char const*) ;
 int sshbuf_put_u8 (struct sshbuf*,int ) ;

int
ssh_update_card(int sock, int add, const char *reader_id, const char *pin,
    u_int life, u_int confirm)
{
 struct sshbuf *msg;
 int r, constrained = (life || confirm);
 u_char type;

 if (add) {
  type = constrained ?
      SSH_AGENTC_ADD_SMARTCARD_KEY_CONSTRAINED :
      SSH_AGENTC_ADD_SMARTCARD_KEY;
 } else
  type = SSH_AGENTC_REMOVE_SMARTCARD_KEY;

 if ((msg = sshbuf_new()) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 if ((r = sshbuf_put_u8(msg, type)) != 0 ||
     (r = sshbuf_put_cstring(msg, reader_id)) != 0 ||
     (r = sshbuf_put_cstring(msg, pin)) != 0)
  goto out;
 if (constrained &&
     (r = encode_constraints(msg, life, confirm, 0)) != 0)
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
