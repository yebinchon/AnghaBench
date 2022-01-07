
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {struct kex* kex; } ;
struct kex {int kex_type; int we_need; int * dh; } ;
typedef int BIGNUM ;


 int BN_print_fp (int ,int const*) ;
 int DH_get0_key (int *,int const**,int *) ;
 int DHparams_print_fp (int ,int *) ;





 int SSH2_MSG_KEXDH_INIT ;
 int SSH2_MSG_KEXDH_REPLY ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int debug (char*) ;
 int dh_gen_key (int *,int) ;
 int * dh_new_group1 () ;
 int * dh_new_group14 () ;
 int * dh_new_group16 () ;
 int * dh_new_group18 () ;
 int fprintf (int ,char*) ;
 int input_kex_dh ;
 int ssh_dispatch_set (struct ssh*,int ,int *) ;
 int sshpkt_put_bignum2 (struct ssh*,int const*) ;
 int sshpkt_send (struct ssh*) ;
 int sshpkt_start (struct ssh*,int ) ;
 int stderr ;

int
kexdh_client(struct ssh *ssh)
{
 struct kex *kex = ssh->kex;
 int r;
 const BIGNUM *pub_key;


 switch (kex->kex_type) {
 case 128:
  kex->dh = dh_new_group1();
  break;
 case 132:
 case 131:
  kex->dh = dh_new_group14();
  break;
 case 130:
  kex->dh = dh_new_group16();
  break;
 case 129:
  kex->dh = dh_new_group18();
  break;
 default:
  r = SSH_ERR_INVALID_ARGUMENT;
  goto out;
 }
 if (kex->dh == ((void*)0)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 debug("sending SSH2_MSG_KEXDH_INIT");
 if ((r = dh_gen_key(kex->dh, kex->we_need * 8)) != 0)
  goto out;
 DH_get0_key(kex->dh, &pub_key, ((void*)0));
 if ((r = sshpkt_start(ssh, SSH2_MSG_KEXDH_INIT)) != 0 ||
     (r = sshpkt_put_bignum2(ssh, pub_key)) != 0 ||
     (r = sshpkt_send(ssh)) != 0)
  goto out;






 debug("expecting SSH2_MSG_KEXDH_REPLY");
 ssh_dispatch_set(ssh, SSH2_MSG_KEXDH_REPLY, &input_kex_dh);
 r = 0;
 out:
 return r;
}
