
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ssh {struct kex* kex; } ;
struct kex {int flags; int my; scalar_t__ done; } ;


 scalar_t__ KEX_COOKIE_LEN ;
 int KEX_INIT_SENT ;
 int SSH2_MSG_KEXINIT ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_FORMAT ;
 int arc4random_buf (int *,scalar_t__) ;
 int debug (char*) ;
 scalar_t__ sshbuf_len (int ) ;
 int * sshbuf_mutable_ptr (int ) ;
 int sshpkt_putb (struct ssh*,int ) ;
 int sshpkt_send (struct ssh*) ;
 int sshpkt_start (struct ssh*,int ) ;

int
kex_send_kexinit(struct ssh *ssh)
{
 u_char *cookie;
 struct kex *kex = ssh->kex;
 int r;

 if (kex == ((void*)0))
  return SSH_ERR_INTERNAL_ERROR;
 if (kex->flags & KEX_INIT_SENT)
  return 0;
 kex->done = 0;


 if (sshbuf_len(kex->my) < KEX_COOKIE_LEN)
  return SSH_ERR_INVALID_FORMAT;
 if ((cookie = sshbuf_mutable_ptr(kex->my)) == ((void*)0))
  return SSH_ERR_INTERNAL_ERROR;
 arc4random_buf(cookie, KEX_COOKIE_LEN);

 if ((r = sshpkt_start(ssh, SSH2_MSG_KEXINIT)) != 0 ||
     (r = sshpkt_putb(ssh, kex->my)) != 0 ||
     (r = sshpkt_send(ssh)) != 0)
  return r;
 debug("SSH2_MSG_KEXINIT sent");
 kex->flags |= KEX_INIT_SENT;
 return 0;
}
