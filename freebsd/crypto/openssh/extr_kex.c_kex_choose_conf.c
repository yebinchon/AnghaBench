
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_int ;
struct ssh {int dispatch_skip_packets; struct kex* kex; } ;
struct TYPE_4__ {char* name; int key_len; } ;
struct TYPE_5__ {int iv_len; int block_size; int cipher; int key_len; int name; } ;
struct TYPE_6__ {int name; } ;
struct newkeys {TYPE_1__ mac; TYPE_2__ enc; TYPE_3__ comp; } ;
struct kex {char* failed_choice; size_t we_need; size_t dh_need; struct newkeys** newkeys; scalar_t__ server; int ext_info_c; int peer; int my; } ;


 size_t MAXIMUM (size_t,int ) ;
 size_t MODE_IN ;
 size_t MODE_MAX ;
 size_t MODE_OUT ;
 int PROPOSAL_COMP_ALGS_CTOS ;
 int PROPOSAL_COMP_ALGS_STOC ;
 int PROPOSAL_ENC_ALGS_CTOS ;
 int PROPOSAL_ENC_ALGS_STOC ;
 size_t PROPOSAL_KEX_ALGS ;
 int PROPOSAL_MAC_ALGS_CTOS ;
 int PROPOSAL_MAC_ALGS_STOC ;
 size_t PROPOSAL_SERVER_HOST_KEY_ALGS ;
 int SSH_ERR_ALLOC_FAIL ;
 struct newkeys* calloc (int,int) ;
 int choose_comp (TYPE_3__*,char*,char*) ;
 int choose_enc (TYPE_2__*,char*,char*) ;
 int choose_hostkeyalg (struct kex*,char*,char*) ;
 int choose_kex (struct kex*,char*,char*) ;
 int choose_mac (struct ssh*,TYPE_1__*,char*,char*) ;
 size_t cipher_authlen (int ) ;
 int cipher_seclen (int ) ;
 int debug (char*,char*,int ,char*,int ) ;
 int debug2 (char*,char*) ;
 int free (char*) ;
 int kex_buf2prop (int ,int*,char***) ;
 int kex_prop_free (char**) ;
 char* match_list (char*,char*,int *) ;
 int proposals_match (char**,char**) ;

__attribute__((used)) static int
kex_choose_conf(struct ssh *ssh)
{
 struct kex *kex = ssh->kex;
 struct newkeys *newkeys;
 char **my = ((void*)0), **peer = ((void*)0);
 char **cprop, **sprop;
 int nenc, nmac, ncomp;
 u_int mode, ctos, need, dh_need, authlen;
 int r, first_kex_follows;

 debug2("local %s KEXINIT proposal", kex->server ? "server" : "client");
 if ((r = kex_buf2prop(kex->my, ((void*)0), &my)) != 0)
  goto out;
 debug2("peer %s KEXINIT proposal", kex->server ? "client" : "server");
 if ((r = kex_buf2prop(kex->peer, &first_kex_follows, &peer)) != 0)
  goto out;

 if (kex->server) {
  cprop=peer;
  sprop=my;
 } else {
  cprop=my;
  sprop=peer;
 }


 if (kex->server) {
  char *ext;

  ext = match_list("ext-info-c", peer[PROPOSAL_KEX_ALGS], ((void*)0));
  kex->ext_info_c = (ext != ((void*)0));
  free(ext);
 }


 if ((r = choose_kex(kex, cprop[PROPOSAL_KEX_ALGS],
     sprop[PROPOSAL_KEX_ALGS])) != 0) {
  kex->failed_choice = peer[PROPOSAL_KEX_ALGS];
  peer[PROPOSAL_KEX_ALGS] = ((void*)0);
  goto out;
 }
 if ((r = choose_hostkeyalg(kex, cprop[PROPOSAL_SERVER_HOST_KEY_ALGS],
     sprop[PROPOSAL_SERVER_HOST_KEY_ALGS])) != 0) {
  kex->failed_choice = peer[PROPOSAL_SERVER_HOST_KEY_ALGS];
  peer[PROPOSAL_SERVER_HOST_KEY_ALGS] = ((void*)0);
  goto out;
 }
 for (mode = 0; mode < MODE_MAX; mode++) {
  if ((newkeys = calloc(1, sizeof(*newkeys))) == ((void*)0)) {
   r = SSH_ERR_ALLOC_FAIL;
   goto out;
  }
  kex->newkeys[mode] = newkeys;
  ctos = (!kex->server && mode == MODE_OUT) ||
      (kex->server && mode == MODE_IN);
  nenc = ctos ? PROPOSAL_ENC_ALGS_CTOS : PROPOSAL_ENC_ALGS_STOC;
  nmac = ctos ? PROPOSAL_MAC_ALGS_CTOS : PROPOSAL_MAC_ALGS_STOC;
  ncomp = ctos ? PROPOSAL_COMP_ALGS_CTOS : PROPOSAL_COMP_ALGS_STOC;
  if ((r = choose_enc(&newkeys->enc, cprop[nenc],
      sprop[nenc])) != 0) {
   kex->failed_choice = peer[nenc];
   peer[nenc] = ((void*)0);
   goto out;
  }
  authlen = cipher_authlen(newkeys->enc.cipher);

  if (authlen == 0 &&
      (r = choose_mac(ssh, &newkeys->mac, cprop[nmac],
      sprop[nmac])) != 0) {
   kex->failed_choice = peer[nmac];
   peer[nmac] = ((void*)0);
   goto out;
  }
  if ((r = choose_comp(&newkeys->comp, cprop[ncomp],
      sprop[ncomp])) != 0) {
   kex->failed_choice = peer[ncomp];
   peer[ncomp] = ((void*)0);
   goto out;
  }
  debug("kex: %s cipher: %s MAC: %s compression: %s",
      ctos ? "client->server" : "server->client",
      newkeys->enc.name,
      authlen == 0 ? newkeys->mac.name : "<implicit>",
      newkeys->comp.name);
 }
 need = dh_need = 0;
 for (mode = 0; mode < MODE_MAX; mode++) {
  newkeys = kex->newkeys[mode];
  need = MAXIMUM(need, newkeys->enc.key_len);
  need = MAXIMUM(need, newkeys->enc.block_size);
  need = MAXIMUM(need, newkeys->enc.iv_len);
  need = MAXIMUM(need, newkeys->mac.key_len);
  dh_need = MAXIMUM(dh_need, cipher_seclen(newkeys->enc.cipher));
  dh_need = MAXIMUM(dh_need, newkeys->enc.block_size);
  dh_need = MAXIMUM(dh_need, newkeys->enc.iv_len);
  dh_need = MAXIMUM(dh_need, newkeys->mac.key_len);
 }

 kex->we_need = need;
 kex->dh_need = dh_need;


 if (first_kex_follows && !proposals_match(my, peer))
  ssh->dispatch_skip_packets = 1;
 r = 0;
 out:
 kex_prop_free(my);
 kex_prop_free(peer);
 return r;
}
