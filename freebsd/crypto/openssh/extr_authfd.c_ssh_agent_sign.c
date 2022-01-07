
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef scalar_t__ u_char ;
struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;


 int SSH2_AGENTC_SIGN_REQUEST ;
 scalar_t__ SSH2_AGENT_SIGN_RESPONSE ;
 int SSH_ERR_AGENT_FAILURE ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_INVALID_FORMAT ;
 size_t SSH_KEY_MAX_SIGN_DATA_SIZE ;
 int agent_encode_alg (struct sshkey const*,char const*) ;
 scalar_t__ agent_failed (scalar_t__) ;
 int freezero (scalar_t__*,size_t) ;
 int ssh_request_reply (int,struct sshbuf*,struct sshbuf*) ;
 int sshbuf_free (struct sshbuf*) ;
 int sshbuf_get_string (struct sshbuf*,scalar_t__**,size_t*) ;
 int sshbuf_get_u8 (struct sshbuf*,scalar_t__*) ;
 struct sshbuf* sshbuf_new () ;
 int sshbuf_put_string (struct sshbuf*,scalar_t__ const*,size_t) ;
 int sshbuf_put_u32 (struct sshbuf*,int ) ;
 int sshbuf_put_u8 (struct sshbuf*,int ) ;
 int sshkey_check_sigtype (scalar_t__*,size_t,char const*) ;
 int sshkey_puts (struct sshkey const*,struct sshbuf*) ;

int
ssh_agent_sign(int sock, const struct sshkey *key,
    u_char **sigp, size_t *lenp,
    const u_char *data, size_t datalen, const char *alg, u_int compat)
{
 struct sshbuf *msg;
 u_char *sig = ((void*)0), type = 0;
 size_t len = 0;
 u_int flags = 0;
 int r = SSH_ERR_INTERNAL_ERROR;

 *sigp = ((void*)0);
 *lenp = 0;

 if (datalen > SSH_KEY_MAX_SIGN_DATA_SIZE)
  return SSH_ERR_INVALID_ARGUMENT;
 if ((msg = sshbuf_new()) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 flags |= agent_encode_alg(key, alg);
 if ((r = sshbuf_put_u8(msg, SSH2_AGENTC_SIGN_REQUEST)) != 0 ||
     (r = sshkey_puts(key, msg)) != 0 ||
     (r = sshbuf_put_string(msg, data, datalen)) != 0 ||
     (r = sshbuf_put_u32(msg, flags)) != 0)
  goto out;
 if ((r = ssh_request_reply(sock, msg, msg)) != 0)
  goto out;
 if ((r = sshbuf_get_u8(msg, &type)) != 0)
  goto out;
 if (agent_failed(type)) {
  r = SSH_ERR_AGENT_FAILURE;
  goto out;
 } else if (type != SSH2_AGENT_SIGN_RESPONSE) {
  r = SSH_ERR_INVALID_FORMAT;
  goto out;
 }
 if ((r = sshbuf_get_string(msg, &sig, &len)) != 0)
  goto out;

 if ((r = sshkey_check_sigtype(sig, len, alg)) != 0)
  goto out;

 *sigp = sig;
 *lenp = len;
 sig = ((void*)0);
 len = 0;
 r = 0;
 out:
 freezero(sig, len);
 sshbuf_free(msg);
 return r;
}
