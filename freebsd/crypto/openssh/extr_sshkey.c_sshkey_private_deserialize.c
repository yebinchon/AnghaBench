
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshkey {int ecdsa_nid; int type; int rsa; int * xmss_sk; int * xmss_pk; int xmss_name; int * ed25519_sk; int * ed25519_pk; int * ecdsa; int dsa; } ;
struct sshbuf {int dummy; } ;
typedef int BIGNUM ;


 int BN_clear_free (int *) ;
 int * BN_new () ;
 int DSA_set0_key (int ,int *,int *) ;
 int DSA_set0_pqg (int ,int *,int *,int *) ;
 int EC_KEY_get0_group (int *) ;
 int EC_KEY_get0_public_key (int *) ;
 int * EC_KEY_new_by_curve_name (int) ;
 int EC_KEY_set_private_key (int *,int *) ;
 size_t ED25519_PK_SZ ;
 size_t ED25519_SK_SZ ;
 int RSA_blinding_on (int ,int *) ;
 int RSA_set0_factors (int ,int *,int *) ;
 int RSA_set0_key (int ,int *,int *,int *) ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_EC_CURVE_MISMATCH ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_INVALID_FORMAT ;
 int SSH_ERR_KEY_TYPE_UNKNOWN ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 int check_rsa_length (int ) ;
 int free (char*) ;
 int freezero (int *,size_t) ;
 int ssh_rsa_complete_crt_parameters (struct sshkey*,int *) ;
 int sshbuf_get_bignum2 (struct sshbuf*,int *) ;
 int sshbuf_get_cstring (struct sshbuf*,char**,int *) ;
 int sshbuf_get_eckey (struct sshbuf*,int *) ;
 int sshbuf_get_string (struct sshbuf*,int **,size_t*) ;
 int sshkey_curve_name_to_nid (char*) ;
 int sshkey_ec_validate_private (int *) ;
 int sshkey_ec_validate_public (int ,int ) ;
 int sshkey_ecdsa_nid_from_name (char*) ;
 int sshkey_free (struct sshkey*) ;
 int sshkey_froms (struct sshbuf*,struct sshkey**) ;
 struct sshkey* sshkey_new_private (int) ;
 int sshkey_type_from_name (char*) ;
 int sshkey_xmss_deserialize_state_opt (struct sshkey*,struct sshbuf*) ;
 int sshkey_xmss_init (struct sshkey*,char*) ;
 size_t sshkey_xmss_pklen (struct sshkey*) ;
 size_t sshkey_xmss_sklen (struct sshkey*) ;
 int strcmp (char*,int ) ;

int
sshkey_private_deserialize(struct sshbuf *buf, struct sshkey **kp)
{
 char *tname = ((void*)0), *curve = ((void*)0), *xmss_name = ((void*)0);
 struct sshkey *k = ((void*)0);
 size_t pklen = 0, sklen = 0;
 int type, r = SSH_ERR_INTERNAL_ERROR;
 u_char *ed25519_pk = ((void*)0), *ed25519_sk = ((void*)0);
 u_char *xmss_pk = ((void*)0), *xmss_sk = ((void*)0);
 if (kp != ((void*)0))
  *kp = ((void*)0);
 if ((r = sshbuf_get_cstring(buf, &tname, ((void*)0))) != 0)
  goto out;
 type = sshkey_type_from_name(tname);
 switch (type) {
 case 133:
  if ((k = sshkey_new_private(type)) == ((void*)0)) {
   r = SSH_ERR_ALLOC_FAIL;
   goto out;
  }
  if ((r = sshbuf_get_string(buf, &ed25519_pk, &pklen)) != 0 ||
      (r = sshbuf_get_string(buf, &ed25519_sk, &sklen)) != 0)
   goto out;
  if (pklen != ED25519_PK_SZ || sklen != ED25519_SK_SZ) {
   r = SSH_ERR_INVALID_FORMAT;
   goto out;
  }
  k->ed25519_pk = ed25519_pk;
  k->ed25519_sk = ed25519_sk;
  ed25519_pk = ed25519_sk = ((void*)0);
  break;
 case 132:
  if ((r = sshkey_froms(buf, &k)) != 0 ||
      (r = sshbuf_get_string(buf, &ed25519_pk, &pklen)) != 0 ||
      (r = sshbuf_get_string(buf, &ed25519_sk, &sklen)) != 0)
   goto out;
  if (pklen != ED25519_PK_SZ || sklen != ED25519_SK_SZ) {
   r = SSH_ERR_INVALID_FORMAT;
   goto out;
  }
  k->ed25519_pk = ed25519_pk;
  k->ed25519_sk = ed25519_sk;
  ed25519_pk = ed25519_sk = ((void*)0);
  break;
 default:
  r = SSH_ERR_KEY_TYPE_UNKNOWN;
  goto out;
 }
 r = 0;
 if (kp != ((void*)0)) {
  *kp = k;
  k = ((void*)0);
 }
 out:
 free(tname);
 free(curve);
 sshkey_free(k);
 freezero(ed25519_pk, pklen);
 freezero(ed25519_sk, sklen);
 free(xmss_name);
 freezero(xmss_pk, pklen);
 freezero(xmss_sk, sklen);
 return r;
}
