
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
struct sshkey {char* ed25519_pk; char* xmss_pk; int * ecdsa; int ecdsa_nid; int dsa; int rsa; } ;
struct sshbuf {int dummy; } ;
typedef int EC_POINT ;
typedef int BIGNUM ;


 int BN_clear_free (int *) ;
 int * BN_new () ;
 int DSA_print_fp (int ,int ,int) ;
 int DSA_set0_key (int ,int *,int *) ;
 int DSA_set0_pqg (int ,int *,int *,int *) ;
 int EC_KEY_free (int *) ;
 int EC_KEY_get0_group (int *) ;
 int * EC_KEY_new_by_curve_name (int ) ;
 int EC_KEY_set_public_key (int *,int *) ;
 int EC_POINT_free (int *) ;
 int * EC_POINT_new (int ) ;
 size_t ED25519_PK_SZ ;
 int RSA_print_fp (int ,int ,int) ;
 int RSA_set0_key (int ,int *,int *,int *) ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_EC_CURVE_INVALID ;
 int SSH_ERR_EC_CURVE_MISMATCH ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_FORMAT ;
 int SSH_ERR_KEY_CERT_INVALID_SIGN_KEY ;
 int SSH_ERR_KEY_INVALID_EC_VALUE ;
 int SSH_ERR_KEY_TYPE_UNKNOWN ;
 int SSH_ERR_LIBCRYPTO_ERROR ;
 int cert_parse (struct sshbuf*,struct sshkey*,struct sshbuf*) ;
 int check_rsa_length (int ) ;
 int free (char*) ;
 int sshbuf_dump (struct sshbuf*,int ) ;
 int sshbuf_free (struct sshbuf*) ;
 struct sshbuf* sshbuf_fromb (struct sshbuf*) ;
 int sshbuf_get_bignum2 (struct sshbuf*,int *) ;
 scalar_t__ sshbuf_get_cstring (struct sshbuf*,char**,int *) ;
 int sshbuf_get_ec (struct sshbuf*,int *,int ) ;
 int sshbuf_get_string (struct sshbuf*,char**,size_t*) ;
 int sshbuf_get_string_direct (struct sshbuf*,int *,int *) ;
 scalar_t__ sshbuf_len (struct sshbuf*) ;
 int sshkey_curve_name_to_nid (char*) ;
 int sshkey_dump_ec_point (int ,int *) ;
 int sshkey_ec_validate_public (int ,int *) ;
 int sshkey_ecdsa_nid_from_name (char*) ;
 int sshkey_free (struct sshkey*) ;
 scalar_t__ sshkey_is_cert (struct sshkey*) ;
 struct sshkey* sshkey_new (int) ;
 int sshkey_type_from_name (char*) ;
 scalar_t__ sshkey_type_is_cert (int) ;
 int sshkey_xmss_deserialize_pk_info (struct sshkey*,struct sshbuf*) ;
 int sshkey_xmss_init (struct sshkey*,char*) ;
 size_t sshkey_xmss_pklen (struct sshkey*) ;
 int stderr ;

__attribute__((used)) static int
sshkey_from_blob_internal(struct sshbuf *b, struct sshkey **keyp,
    int allow_cert)
{
 int type, ret = SSH_ERR_INTERNAL_ERROR;
 char *ktype = ((void*)0), *curve = ((void*)0), *xmss_name = ((void*)0);
 struct sshkey *key = ((void*)0);
 size_t len;
 u_char *pk = ((void*)0);
 struct sshbuf *copy;
 if (keyp != ((void*)0))
  *keyp = ((void*)0);
 if ((copy = sshbuf_fromb(b)) == ((void*)0)) {
  ret = SSH_ERR_ALLOC_FAIL;
  goto out;
 }
 if (sshbuf_get_cstring(b, &ktype, ((void*)0)) != 0) {
  ret = SSH_ERR_INVALID_FORMAT;
  goto out;
 }

 type = sshkey_type_from_name(ktype);
 if (!allow_cert && sshkey_type_is_cert(type)) {
  ret = SSH_ERR_KEY_CERT_INVALID_SIGN_KEY;
  goto out;
 }
 switch (type) {
 case 133:

  if (sshbuf_get_string_direct(b, ((void*)0), ((void*)0)) != 0) {
   ret = SSH_ERR_INVALID_FORMAT;
   goto out;
  }

 case 134:
  if ((ret = sshbuf_get_string(b, &pk, &len)) != 0)
   goto out;
  if (len != ED25519_PK_SZ) {
   ret = SSH_ERR_INVALID_FORMAT;
   goto out;
  }
  if ((key = sshkey_new(type)) == ((void*)0)) {
   ret = SSH_ERR_ALLOC_FAIL;
   goto out;
  }
  key->ed25519_pk = pk;
  pk = ((void*)0);
  break;
 case 130:
 default:
  ret = SSH_ERR_KEY_TYPE_UNKNOWN;
  goto out;
 }


 if (sshkey_is_cert(key) && (ret = cert_parse(b, key, copy)) != 0)
  goto out;

 if (key != ((void*)0) && sshbuf_len(b) != 0) {
  ret = SSH_ERR_INVALID_FORMAT;
  goto out;
 }
 ret = 0;
 if (keyp != ((void*)0)) {
  *keyp = key;
  key = ((void*)0);
 }
 out:
 sshbuf_free(copy);
 sshkey_free(key);
 free(xmss_name);
 free(ktype);
 free(curve);
 free(pk);
 return ret;
}
