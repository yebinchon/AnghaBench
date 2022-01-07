
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char const u8 ;
struct dpp_bootstrap_info {unsigned char const* pubkey_hash; int * pubkey; int curve; } ;
typedef int buf ;
typedef int X509_PUBKEY ;
typedef int X509_ALGOR ;
typedef int EVP_PKEY ;
typedef int const ASN1_OBJECT ;


 scalar_t__ EVP_PKEY_EC ;
 int EVP_PKEY_free (int *) ;
 int EVP_PKEY_id (int *) ;
 scalar_t__ EVP_PKEY_type (int ) ;
 int MSG_DEBUG ;
 int OBJ_obj2txt (char*,int,int const*,int ) ;
 int SHA256_MAC_LEN ;
 int V_ASN1_OBJECT ;
 int X509_ALGOR_get0 (int const**,int*,void*,int *) ;
 int X509_PUBKEY_free (int *) ;
 int X509_PUBKEY_get0_param (int const**,unsigned char const**,int*,int **,int *) ;
 int X509_PUBKEY_set (int **,int *) ;
 unsigned char* base64_decode (unsigned char const*,int,size_t*) ;
 int * d2i_PUBKEY (int *,unsigned char const**,size_t) ;
 int dpp_get_curve_oid (int const*) ;
 int os_free (unsigned char const*) ;
 char* os_strchr (char const*,char) ;
 scalar_t__ os_strcmp (char*,char*) ;
 scalar_t__ sha256_vector (int,unsigned char const**,size_t*,unsigned char const*) ;
 int wpa_hexdump (int ,char*,unsigned char const*,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int dpp_parse_uri_pk(struct dpp_bootstrap_info *bi, const char *info)
{
 const char *end;
 u8 *data;
 size_t data_len;
 EVP_PKEY *pkey;
 const unsigned char *p;
 int res;
 X509_PUBKEY *pub = ((void*)0);
 ASN1_OBJECT *ppkalg;
 const unsigned char *pk;
 int ppklen;
 X509_ALGOR *pa;



 ASN1_OBJECT *pa_oid;



 const void *pval;
 int ptype;
 const ASN1_OBJECT *poid;
 char buf[100];

 end = os_strchr(info, ';');
 if (!end)
  return -1;

 data = base64_decode((const unsigned char *) info, end - info,
        &data_len);
 if (!data) {
  wpa_printf(MSG_DEBUG,
      "DPP: Invalid base64 encoding on URI public-key");
  return -1;
 }
 wpa_hexdump(MSG_DEBUG, "DPP: Base64 decoded URI public-key",
      data, data_len);

 if (sha256_vector(1, (const u8 **) &data, &data_len,
     bi->pubkey_hash) < 0) {
  wpa_printf(MSG_DEBUG, "DPP: Failed to hash public key");
  os_free(data);
  return -1;
 }
 wpa_hexdump(MSG_DEBUG, "DPP: Public key hash",
      bi->pubkey_hash, SHA256_MAC_LEN);
 p = data;
 pkey = d2i_PUBKEY(((void*)0), &p, data_len);
 os_free(data);

 if (!pkey) {
  wpa_printf(MSG_DEBUG,
      "DPP: Could not parse URI public-key SubjectPublicKeyInfo");
  return -1;
 }

 if (EVP_PKEY_type(EVP_PKEY_id(pkey)) != EVP_PKEY_EC) {
  wpa_printf(MSG_DEBUG,
      "DPP: SubjectPublicKeyInfo does not describe an EC key");
  EVP_PKEY_free(pkey);
  return -1;
 }

 res = X509_PUBKEY_set(&pub, pkey);
 if (res != 1) {
  wpa_printf(MSG_DEBUG, "DPP: Could not set pubkey");
  goto fail;
 }

 res = X509_PUBKEY_get0_param(&ppkalg, &pk, &ppklen, &pa, pub);
 if (res != 1) {
  wpa_printf(MSG_DEBUG,
      "DPP: Could not extract SubjectPublicKeyInfo parameters");
  goto fail;
 }
 res = OBJ_obj2txt(buf, sizeof(buf), ppkalg, 0);
 if (res < 0 || (size_t) res >= sizeof(buf)) {
  wpa_printf(MSG_DEBUG,
      "DPP: Could not extract SubjectPublicKeyInfo algorithm");
  goto fail;
 }
 wpa_printf(MSG_DEBUG, "DPP: URI subjectPublicKey algorithm: %s", buf);
 if (os_strcmp(buf, "id-ecPublicKey") != 0) {
  wpa_printf(MSG_DEBUG,
      "DPP: Unsupported SubjectPublicKeyInfo algorithm");
  goto fail;
 }

 X509_ALGOR_get0(&pa_oid, &ptype, (void *) &pval, pa);
 if (ptype != V_ASN1_OBJECT) {
  wpa_printf(MSG_DEBUG,
      "DPP: SubjectPublicKeyInfo parameters did not contain an OID");
  goto fail;
 }
 poid = pval;
 res = OBJ_obj2txt(buf, sizeof(buf), poid, 0);
 if (res < 0 || (size_t) res >= sizeof(buf)) {
  wpa_printf(MSG_DEBUG,
      "DPP: Could not extract SubjectPublicKeyInfo parameters OID");
  goto fail;
 }
 wpa_printf(MSG_DEBUG, "DPP: URI subjectPublicKey parameters: %s", buf);
 bi->curve = dpp_get_curve_oid(poid);
 if (!bi->curve) {
  wpa_printf(MSG_DEBUG,
      "DPP: Unsupported SubjectPublicKeyInfo curve: %s",
      buf);
  goto fail;
 }

 wpa_hexdump(MSG_DEBUG, "DPP: URI subjectPublicKey", pk, ppklen);

 X509_PUBKEY_free(pub);
 bi->pubkey = pkey;
 return 0;
fail:
 X509_PUBKEY_free(pub);
 EVP_PKEY_free(pkey);
 return -1;
}
