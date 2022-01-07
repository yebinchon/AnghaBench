
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int type; int ecdsa_nid; char* xmss_pk; char* xmss_state; char* xmss_name; char* xmss_filename; int * ed25519_pk; int * ecdsa; int * dsa; int * rsa; int * cert; } ;
struct sshbuf {int dummy; } ;


 int DSA_free (int *) ;
 int DSA_print_fp (int ,int *,int) ;
 int EC_KEY_free (int *) ;
 int ED25519_PK_SZ ;
 int RSA_free (int *) ;
 int RSA_print_fp (int ,int *,int) ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_EC_CURVE_MISMATCH ;
 int SSH_ERR_EXPECTED_CERT ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int SSH_ERR_INVALID_FORMAT ;
 int SSH_ERR_KEY_TYPE_MISMATCH ;
 int cert_free (int *) ;
 int free (char*) ;
 int freezero (int *,int ) ;
 int peek_type_nid (char*,size_t,int*) ;
 int sshbuf_b64tod (struct sshbuf*,char*) ;
 int sshbuf_free (struct sshbuf*) ;
 struct sshbuf* sshbuf_new () ;
 int sshkey_dump_ec_key (int *) ;
 int sshkey_free (struct sshkey*) ;
 int sshkey_fromb (struct sshbuf*,struct sshkey**) ;
 scalar_t__ sshkey_is_cert (struct sshkey*) ;
 int const sshkey_type_plain (int) ;
 int stderr ;
 size_t strcspn (char*,char*) ;
 size_t strlen (char*) ;
 char* strndup (char*,size_t) ;

int
sshkey_read(struct sshkey *ret, char **cpp)
{
 struct sshkey *k;
 char *cp, *blobcopy;
 size_t space;
 int r, type, curve_nid = -1;
 struct sshbuf *blob;

 if (ret == ((void*)0))
  return SSH_ERR_INVALID_ARGUMENT;

 switch (ret->type) {
 case 130:
 case 132:
 case 138:
 case 136:
 case 134:
 case 137:
 case 135:
 case 131:
 case 133:




  break;
 default:
  return SSH_ERR_INVALID_ARGUMENT;
 }


 cp = *cpp;
 space = strcspn(cp, " \t");
 if (space == strlen(cp))
  return SSH_ERR_INVALID_FORMAT;
 if ((type = peek_type_nid(cp, space, &curve_nid)) == 130)
  return SSH_ERR_INVALID_FORMAT;


 for (cp += space; *cp == ' ' || *cp == '\t'; cp++)
  ;
 if (*cp == '\0')
  return SSH_ERR_INVALID_FORMAT;
 if (ret->type != 130 && ret->type != type)
  return SSH_ERR_KEY_TYPE_MISMATCH;
 if ((blob = sshbuf_new()) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;


 space = strcspn(cp, " \t");
 if ((blobcopy = strndup(cp, space)) == ((void*)0)) {
  sshbuf_free(blob);
  return SSH_ERR_ALLOC_FAIL;
 }
 if ((r = sshbuf_b64tod(blob, blobcopy)) != 0) {
  free(blobcopy);
  sshbuf_free(blob);
  return r;
 }
 free(blobcopy);
 if ((r = sshkey_fromb(blob, &k)) != 0) {
  sshbuf_free(blob);
  return r;
 }
 sshbuf_free(blob);


 for (cp += space; *cp == ' ' || *cp == '\t'; cp++)
  ;


 if (k->type != type) {
  sshkey_free(k);
  return SSH_ERR_KEY_TYPE_MISMATCH;
 }
 if (sshkey_type_plain(type) == 136 && curve_nid != k->ecdsa_nid) {
  sshkey_free(k);
  return SSH_ERR_EC_CURVE_MISMATCH;
 }


 ret->type = type;
 if (sshkey_is_cert(ret)) {
  if (!sshkey_is_cert(k)) {
   sshkey_free(k);
   return SSH_ERR_EXPECTED_CERT;
  }
  if (ret->cert != ((void*)0))
   cert_free(ret->cert);
  ret->cert = k->cert;
  k->cert = ((void*)0);
 }
 switch (sshkey_type_plain(ret->type)) {
 case 134:
  freezero(ret->ed25519_pk, ED25519_PK_SZ);
  ret->ed25519_pk = k->ed25519_pk;
  k->ed25519_pk = ((void*)0);



  break;
 default:
  sshkey_free(k);
  return SSH_ERR_INTERNAL_ERROR;
 }
 sshkey_free(k);


 *cpp = cp;
 return 0;
}
