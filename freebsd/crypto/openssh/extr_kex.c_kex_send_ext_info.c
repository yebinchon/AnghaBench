
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;


 int SSH2_MSG_EXT_INFO ;
 int SSH_ERR_ALLOC_FAIL ;
 int free (char*) ;
 char* sshkey_alg_list (int ,int,int,char) ;
 int sshpkt_put_cstring (struct ssh*,char*) ;
 int sshpkt_put_u32 (struct ssh*,int) ;
 int sshpkt_send (struct ssh*) ;
 int sshpkt_start (struct ssh*,int ) ;

__attribute__((used)) static int
kex_send_ext_info(struct ssh *ssh)
{
 int r;
 char *algs;

 if ((algs = sshkey_alg_list(0, 1, 1, ',')) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;

 if ((r = sshpkt_start(ssh, SSH2_MSG_EXT_INFO)) != 0 ||
     (r = sshpkt_put_u32(ssh, 1)) != 0 ||
     (r = sshpkt_put_cstring(ssh, "server-sig-algs")) != 0 ||
     (r = sshpkt_put_cstring(ssh, algs)) != 0 ||
     (r = sshpkt_send(ssh)) != 0)
  goto out;

 r = 0;
 out:
 free(algs);
 return r;
}
