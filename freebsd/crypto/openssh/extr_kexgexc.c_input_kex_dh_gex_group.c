
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef scalar_t__ u_int ;
struct ssh {struct kex* kex; } ;
struct kex {scalar_t__ min; scalar_t__ max; int we_need; int * dh; } ;
typedef int BIGNUM ;


 int BN_clear_free (int *) ;
 int * BN_new () ;
 int BN_num_bits (int *) ;
 int BN_print_fp (int ,int const*) ;
 int DH_get0_key (int *,int const**,int *) ;
 int DHparams_print_fp (int ,int *) ;
 int SSH2_MSG_KEX_DH_GEX_GROUP ;
 int SSH2_MSG_KEX_DH_GEX_INIT ;
 int SSH2_MSG_KEX_DH_GEX_REPLY ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_DH_GEX_OUT_OF_RANGE ;
 int debug (char*) ;
 int dh_gen_key (int *,int) ;
 int * dh_new_group (int *,int *) ;
 int fprintf (int ,char*) ;
 int input_kex_dh_gex_reply ;
 int ssh_dispatch_set (struct ssh*,int ,int *) ;
 int sshpkt_get_bignum2 (struct ssh*,int *) ;
 int sshpkt_get_end (struct ssh*) ;
 int sshpkt_put_bignum2 (struct ssh*,int const*) ;
 int sshpkt_send (struct ssh*) ;
 int sshpkt_start (struct ssh*,int ) ;
 int stderr ;

__attribute__((used)) static int
input_kex_dh_gex_group(int type, u_int32_t seq, struct ssh *ssh)
{
 struct kex *kex = ssh->kex;
 BIGNUM *p = ((void*)0), *g = ((void*)0);
 const BIGNUM *pub_key;
 int r, bits;

 debug("got SSH2_MSG_KEX_DH_GEX_GROUP");

 if ((p = BN_new()) == ((void*)0) ||
     (g = BN_new()) == ((void*)0)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 if ((r = sshpkt_get_bignum2(ssh, p)) != 0 ||
     (r = sshpkt_get_bignum2(ssh, g)) != 0 ||
     (r = sshpkt_get_end(ssh)) != 0)
  goto out;
 if ((bits = BN_num_bits(p)) < 0 ||
     (u_int)bits < kex->min || (u_int)bits > kex->max) {
  r = SSH_ERR_DH_GEX_OUT_OF_RANGE;
  goto out;
 }
 if ((kex->dh = dh_new_group(g, p)) == ((void*)0)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 p = g = ((void*)0);


 if ((r = dh_gen_key(kex->dh, kex->we_need * 8)) != 0)
  goto out;
 DH_get0_key(kex->dh, &pub_key, ((void*)0));
 if ((r = sshpkt_start(ssh, SSH2_MSG_KEX_DH_GEX_INIT)) != 0 ||
     (r = sshpkt_put_bignum2(ssh, pub_key)) != 0 ||
     (r = sshpkt_send(ssh)) != 0)
  goto out;
 debug("SSH2_MSG_KEX_DH_GEX_INIT sent");






 ssh_dispatch_set(ssh, SSH2_MSG_KEX_DH_GEX_GROUP, ((void*)0));
 ssh_dispatch_set(ssh, SSH2_MSG_KEX_DH_GEX_REPLY, &input_kex_dh_gex_reply);
 r = 0;
out:
 BN_clear_free(p);
 BN_clear_free(g);
 return r;
}
