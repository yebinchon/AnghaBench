
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;


 int SSH_AGENTC_LOCK ;
 int SSH_AGENTC_UNLOCK ;
 int SSH_ERR_ALLOC_FAIL ;
 int decode_reply (int ) ;
 int ssh_request_reply (int,struct sshbuf*,struct sshbuf*) ;
 int sshbuf_free (struct sshbuf*) ;
 int sshbuf_get_u8 (struct sshbuf*,int *) ;
 struct sshbuf* sshbuf_new () ;
 int sshbuf_put_cstring (struct sshbuf*,char const*) ;
 int sshbuf_put_u8 (struct sshbuf*,int ) ;

int
ssh_lock_agent(int sock, int lock, const char *password)
{
 int r;
 u_char type = lock ? SSH_AGENTC_LOCK : SSH_AGENTC_UNLOCK;
 struct sshbuf *msg;

 if ((msg = sshbuf_new()) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 if ((r = sshbuf_put_u8(msg, type)) != 0 ||
     (r = sshbuf_put_cstring(msg, password)) != 0)
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
