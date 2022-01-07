
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef void* u_int ;
struct ssh {struct kex* kex; } ;
struct kex {scalar_t__ nbits; scalar_t__ min; scalar_t__ max; int we_need; int * dh; } ;
typedef int BIGNUM ;


 int DH_GRP_MAX ;
 scalar_t__ DH_GRP_MIN ;
 int DH_get0_pqg (int *,int const**,int *,int const**) ;
 void* MAXIMUM (scalar_t__,void*) ;
 void* MINIMUM (int ,void*) ;
 int * PRIVSEP (int ) ;
 int SSH2_MSG_KEX_DH_GEX_GROUP ;
 int SSH2_MSG_KEX_DH_GEX_INIT ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_DH_GEX_OUT_OF_RANGE ;
 int choose_dh (void*,void*,void*) ;
 int debug (char*) ;
 int dh_gen_key (int *,int) ;
 int input_kex_dh_gex_init ;
 int ssh_dispatch_set (struct ssh*,int ,int *) ;
 int sshpkt_disconnect (struct ssh*,char*) ;
 int sshpkt_get_end (struct ssh*) ;
 int sshpkt_get_u32 (struct ssh*,void**) ;
 int sshpkt_put_bignum2 (struct ssh*,int const*) ;
 int sshpkt_send (struct ssh*) ;
 int sshpkt_start (struct ssh*,int ) ;

__attribute__((used)) static int
input_kex_dh_gex_request(int type, u_int32_t seq, struct ssh *ssh)
{
 struct kex *kex = ssh->kex;
 int r;
 u_int min = 0, max = 0, nbits = 0;
 const BIGNUM *dh_p, *dh_g;

 debug("SSH2_MSG_KEX_DH_GEX_REQUEST received");
 if ((r = sshpkt_get_u32(ssh, &min)) != 0 ||
     (r = sshpkt_get_u32(ssh, &nbits)) != 0 ||
     (r = sshpkt_get_u32(ssh, &max)) != 0 ||
     (r = sshpkt_get_end(ssh)) != 0)
  goto out;
 kex->nbits = nbits;
 kex->min = min;
 kex->max = max;
 min = MAXIMUM(DH_GRP_MIN, min);
 max = MINIMUM(DH_GRP_MAX, max);
 nbits = MAXIMUM(DH_GRP_MIN, nbits);
 nbits = MINIMUM(DH_GRP_MAX, nbits);

 if (kex->max < kex->min || kex->nbits < kex->min ||
     kex->max < kex->nbits || kex->max < DH_GRP_MIN) {
  r = SSH_ERR_DH_GEX_OUT_OF_RANGE;
  goto out;
 }


 kex->dh = PRIVSEP(choose_dh(min, nbits, max));
 if (kex->dh == ((void*)0)) {
  sshpkt_disconnect(ssh, "no matching DH grp found");
  r = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 debug("SSH2_MSG_KEX_DH_GEX_GROUP sent");
 DH_get0_pqg(kex->dh, &dh_p, ((void*)0), &dh_g);
 if ((r = sshpkt_start(ssh, SSH2_MSG_KEX_DH_GEX_GROUP)) != 0 ||
     (r = sshpkt_put_bignum2(ssh, dh_p)) != 0 ||
     (r = sshpkt_put_bignum2(ssh, dh_g)) != 0 ||
     (r = sshpkt_send(ssh)) != 0)
  goto out;


 if ((r = dh_gen_key(kex->dh, kex->we_need * 8)) != 0)
  goto out;

 debug("expecting SSH2_MSG_KEX_DH_GEX_INIT");
 ssh_dispatch_set(ssh, SSH2_MSG_KEX_DH_GEX_INIT, &input_kex_dh_gex_init);
 r = 0;
 out:
 return r;
}
