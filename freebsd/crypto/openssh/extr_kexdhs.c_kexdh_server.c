
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {struct kex* kex; } ;
struct kex {int kex_type; int we_need; int * dh; } ;







 int SSH2_MSG_KEXDH_INIT ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int debug (char*) ;
 int dh_gen_key (int *,int) ;
 int * dh_new_group1 () ;
 int * dh_new_group14 () ;
 int * dh_new_group16 () ;
 int * dh_new_group18 () ;
 int input_kex_dh_init ;
 int ssh_dispatch_set (struct ssh*,int ,int *) ;

int
kexdh_server(struct ssh *ssh)
{
 struct kex *kex = ssh->kex;
 int r;


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
 if ((r = dh_gen_key(kex->dh, kex->we_need * 8)) != 0)
  goto out;

 debug("expecting SSH2_MSG_KEXDH_INIT");
 ssh_dispatch_set(ssh, SSH2_MSG_KEXDH_INIT, &input_kex_dh_init);
 r = 0;
 out:
 return r;
}
