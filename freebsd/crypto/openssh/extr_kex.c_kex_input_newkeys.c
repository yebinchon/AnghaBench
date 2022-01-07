
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ssh {struct kex* kex; } ;
struct kex {int done; int * name; int flags; int peer; } ;


 int KEX_INIT_SENT ;
 int MODE_IN ;
 int SSH2_MSG_KEXINIT ;
 int SSH2_MSG_NEWKEYS ;
 int debug (char*) ;
 int free (int *) ;
 int kex_input_kexinit ;
 int kex_protocol_error ;
 int ssh_dispatch_set (struct ssh*,int ,int *) ;
 int ssh_set_newkeys (struct ssh*,int ) ;
 int sshbuf_reset (int ) ;
 int sshpkt_get_end (struct ssh*) ;

__attribute__((used)) static int
kex_input_newkeys(int type, u_int32_t seq, struct ssh *ssh)
{
 struct kex *kex = ssh->kex;
 int r;

 debug("SSH2_MSG_NEWKEYS received");
 ssh_dispatch_set(ssh, SSH2_MSG_NEWKEYS, &kex_protocol_error);
 ssh_dispatch_set(ssh, SSH2_MSG_KEXINIT, &kex_input_kexinit);
 if ((r = sshpkt_get_end(ssh)) != 0)
  return r;
 if ((r = ssh_set_newkeys(ssh, MODE_IN)) != 0)
  return r;
 kex->done = 1;
 sshbuf_reset(kex->peer);

 kex->flags &= ~KEX_INIT_SENT;
 free(kex->name);
 kex->name = ((void*)0);
 return 0;
}
