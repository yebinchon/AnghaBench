
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sshkey {int type; char const* xmss_name; int * xmss_pk; int * ed25519_pk; int * rsa; int * ecdsa; int ecdsa_nid; int * dsa; TYPE_1__* cert; } ;
struct sshbuf {int dummy; } ;
typedef enum sshkey_serialize_rep { ____Placeholder_sshkey_serialize_rep } sshkey_serialize_rep ;
struct TYPE_2__ {int certblob; } ;
typedef int BIGNUM ;


 int DSA_get0_key (int *,int const**,int *) ;
 int DSA_get0_pqg (int *,int const**,int const**,int const**) ;
 int ED25519_PK_SZ ;
 int RSA_get0_key (int *,int const**,int const**,int *) ;
 int SSH_ERR_EXPECTED_CERT ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_KEY_LACKS_CERTBLOB ;
 int SSH_ERR_KEY_TYPE_UNKNOWN ;
 scalar_t__ sshbuf_len (int ) ;
 int sshbuf_put_bignum2 (struct sshbuf*,int const*) ;
 int sshbuf_put_cstring (struct sshbuf*,char const*) ;
 int sshbuf_put_eckey (struct sshbuf*,int *) ;
 int sshbuf_put_string (struct sshbuf*,int *,int ) ;
 int sshbuf_putb (struct sshbuf*,int ) ;
 char const* sshkey_curve_nid_to_name (int ) ;
 scalar_t__ sshkey_is_cert (struct sshkey const*) ;
 char* sshkey_ssh_name_from_type_nid (int,int ) ;
 int sshkey_type_plain (int) ;
 int sshkey_xmss_pklen (struct sshkey const*) ;
 int sshkey_xmss_serialize_pk_info (struct sshkey const*,struct sshbuf*,int) ;

__attribute__((used)) static int
to_blob_buf(const struct sshkey *key, struct sshbuf *b, int force_plain,
  enum sshkey_serialize_rep opts)
{
 int type, ret = SSH_ERR_INTERNAL_ERROR;
 const char *typename;




 if (key == ((void*)0))
  return SSH_ERR_INVALID_ARGUMENT;

 if (sshkey_is_cert(key)) {
  if (key->cert == ((void*)0))
   return SSH_ERR_EXPECTED_CERT;
  if (sshbuf_len(key->cert->certblob) == 0)
   return SSH_ERR_KEY_LACKS_CERTBLOB;
 }
 type = force_plain ? sshkey_type_plain(key->type) : key->type;
 typename = sshkey_ssh_name_from_type_nid(type, key->ecdsa_nid);

 switch (type) {





 case 132:





  if ((ret = sshbuf_putb(b, key->cert->certblob)) != 0)
   return ret;
  break;
 case 133:
  if (key->ed25519_pk == ((void*)0))
   return SSH_ERR_INVALID_ARGUMENT;
  if ((ret = sshbuf_put_cstring(b, typename)) != 0 ||
      (ret = sshbuf_put_string(b,
      key->ed25519_pk, ED25519_PK_SZ)) != 0)
   return ret;
  break;
 default:
  return SSH_ERR_KEY_TYPE_UNKNOWN;
 }
 return 0;
}
