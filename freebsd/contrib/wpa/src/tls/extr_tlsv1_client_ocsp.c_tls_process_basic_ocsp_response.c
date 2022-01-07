
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ const u8 ;
struct x509_name {int dummy; } ;
struct x509_certificate {int ext_key_usage; int ocsp_revoked; int ocsp_good; int subject; int issuer; struct x509_certificate* next; } ;
struct x509_algorithm_identifier {int dummy; } ;
struct tlsv1_client {TYPE_1__* cred; } ;
struct asn1_hdr {int tag; scalar_t__ const* payload; size_t length; int class; } ;
typedef scalar_t__ os_time_t ;
typedef int name ;
typedef enum tls_ocsp_result { ____Placeholder_tls_ocsp_result } tls_ocsp_result ;
typedef int buf ;
struct TYPE_2__ {struct x509_certificate* trusted_certs; } ;


 int ASN1_CLASS_CONTEXT_SPECIFIC ;
 int ASN1_CLASS_UNIVERSAL ;
 int ASN1_TAG_BITSTRING ;
 int ASN1_TAG_GENERALIZEDTIME ;
 int ASN1_TAG_INTEGER ;
 int ASN1_TAG_OCTETSTRING ;
 int ASN1_TAG_SEQUENCE ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int SHA1_MAC_LEN ;
 int TLS_OCSP_GOOD ;
 int TLS_OCSP_INVALID ;
 int TLS_OCSP_NO_RESPONSE ;
 int TLS_OCSP_REVOKED ;
 int X509_EXT_KEY_USAGE_OCSP ;
 scalar_t__ asn1_get_next (scalar_t__ const*,int,struct asn1_hdr*) ;
 scalar_t__ ocsp_responder_id_match (struct x509_certificate*,struct x509_name*,scalar_t__ const*) ;
 int os_memset (struct x509_name*,int ,int) ;
 int tls_process_ocsp_responses (struct tlsv1_client*,struct x509_certificate*,struct x509_certificate*,scalar_t__ const*,size_t) ;
 int wpa_hexdump (int ,char*,scalar_t__ const*,int) ;
 int wpa_printf (int ,char*,...) ;
 int x509_certificate_chain_free (struct x509_certificate*) ;
 scalar_t__ x509_certificate_check_signature (struct x509_certificate*,struct x509_certificate*) ;
 struct x509_certificate* x509_certificate_parse (scalar_t__ const*,size_t) ;
 scalar_t__ x509_check_signature (struct x509_certificate*,struct x509_algorithm_identifier*,scalar_t__ const*,size_t,scalar_t__ const*,size_t) ;
 int x509_free_name (struct x509_name*) ;
 scalar_t__ x509_name_compare (int *,int *) ;
 int x509_name_string (struct x509_name*,char*,int) ;
 scalar_t__ x509_parse_algorithm_identifier (scalar_t__ const*,int,struct x509_algorithm_identifier*,scalar_t__ const**) ;
 scalar_t__ x509_parse_name (scalar_t__ const*,size_t,struct x509_name*,scalar_t__ const**) ;
 scalar_t__ x509_parse_time (scalar_t__ const*,size_t,int,scalar_t__*) ;

__attribute__((used)) static enum tls_ocsp_result
tls_process_basic_ocsp_response(struct tlsv1_client *conn,
    struct x509_certificate *srv_cert,
    const u8 *resp, size_t len)
{
 struct asn1_hdr hdr;
 const u8 *pos, *end;
 const u8 *resp_data, *sign_value, *key_hash = ((void*)0), *responses;
 const u8 *resp_data_signed;
 size_t resp_data_len, sign_value_len, responses_len;
 size_t resp_data_signed_len;
 struct x509_algorithm_identifier alg;
 struct x509_certificate *certs = ((void*)0), *last_cert = ((void*)0);
 struct x509_certificate *issuer, *signer;
 struct x509_name name;
 char buf[100];
 os_time_t produced_at;
 enum tls_ocsp_result res;

 wpa_hexdump(MSG_MSGDUMP, "OCSP: BasicOCSPResponse", resp, len);

 os_memset(&name, 0, sizeof(name));
 if (asn1_get_next(resp, len, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_SEQUENCE) {
  wpa_printf(MSG_DEBUG,
      "OCSP: Expected SEQUENCE (BasicOCSPResponse) - found class %d tag 0x%x",
      hdr.class, hdr.tag);
  return TLS_OCSP_INVALID;
 }
 pos = hdr.payload;
 end = hdr.payload + hdr.length;


 if (asn1_get_next(pos, end - pos, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_SEQUENCE) {
  wpa_printf(MSG_DEBUG,
      "OCSP: Expected SEQUENCE (ResponseData) - found class %d tag 0x%x",
      hdr.class, hdr.tag);
  return TLS_OCSP_INVALID;
 }
 resp_data = hdr.payload;
 resp_data_len = hdr.length;
 resp_data_signed = pos;
 pos = hdr.payload + hdr.length;
 resp_data_signed_len = pos - resp_data_signed;


 if (x509_parse_algorithm_identifier(pos, end - pos, &alg, &pos))
  return TLS_OCSP_INVALID;


 if (asn1_get_next(pos, end - pos, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_BITSTRING) {
  wpa_printf(MSG_DEBUG,
      "OCSP: Expected BITSTRING (signature) - found class %d tag 0x%x",
      hdr.class, hdr.tag);
  return TLS_OCSP_INVALID;
 }
 if (hdr.length < 1)
  return TLS_OCSP_INVALID;
 pos = hdr.payload;
 if (*pos) {
  wpa_printf(MSG_DEBUG, "OCSP: BITSTRING - %d unused bits", *pos);




  return TLS_OCSP_INVALID;
 }
 sign_value = pos + 1;
 sign_value_len = hdr.length - 1;
 pos += hdr.length;
 wpa_hexdump(MSG_MSGDUMP, "OCSP: signature", sign_value, sign_value_len);


 if (pos < end) {
  if (asn1_get_next(pos, end - pos, &hdr) < 0 ||
      hdr.class != ASN1_CLASS_CONTEXT_SPECIFIC ||
      hdr.tag != 0) {
   wpa_printf(MSG_DEBUG,
       "OCSP: Expected [0] EXPLICIT (certs) - found class %d tag 0x%x",
       hdr.class, hdr.tag);
   return TLS_OCSP_INVALID;
  }
  wpa_hexdump(MSG_MSGDUMP, "OCSP: certs",
       hdr.payload, hdr.length);
  pos = hdr.payload;
  end = hdr.payload + hdr.length;
  while (pos < end) {
   struct x509_certificate *cert;

   if (asn1_get_next(pos, end - pos, &hdr) < 0 ||
       hdr.class != ASN1_CLASS_UNIVERSAL ||
       hdr.tag != ASN1_TAG_SEQUENCE) {
    wpa_printf(MSG_DEBUG,
        "OCSP: Expected SEQUENCE (Certificate) - found class %d tag 0x%x",
        hdr.class, hdr.tag);
    goto fail;
   }

   cert = x509_certificate_parse(hdr.payload, hdr.length);
   if (!cert)
    goto fail;
   if (last_cert) {
    last_cert->next = cert;
    last_cert = cert;
   } else {
    last_cert = certs = cert;
   }
   pos = hdr.payload + hdr.length;
  }
 }
 pos = resp_data;
 end = resp_data + resp_data_len;
 wpa_hexdump(MSG_MSGDUMP, "OCSP: ResponseData", pos, end - pos);





 if (asn1_get_next(pos, end - pos, &hdr) < 0 &&
     hdr.class == ASN1_CLASS_CONTEXT_SPECIFIC &&
     hdr.tag == 0) {
  if (asn1_get_next(pos, end - pos, &hdr) < 0 ||
      hdr.class != ASN1_CLASS_UNIVERSAL ||
      hdr.tag != ASN1_TAG_INTEGER ||
      hdr.length != 1) {
   wpa_printf(MSG_DEBUG,
       "OCSP: No INTEGER (len=1) tag found for version field - found class %d tag 0x%x length %d",
       hdr.class, hdr.tag, hdr.length);
   goto fail;
  }
  wpa_printf(MSG_DEBUG, "OCSP: ResponseData version %u",
      hdr.payload[0]);
  if (hdr.payload[0] != 0) {
   wpa_printf(MSG_DEBUG,
       "OCSP: Unsupported ResponseData version %u",
       hdr.payload[0]);
   goto no_resp;
  }
  pos = hdr.payload + hdr.length;
 } else {
  wpa_printf(MSG_DEBUG,
      "OCSP: Default ResponseData version (v1)");
 }






 if (asn1_get_next(pos, end - pos, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_CONTEXT_SPECIFIC) {
  wpa_printf(MSG_DEBUG,
      "OCSP: Expected CHOICE (ResponderID) - found class %d tag 0x%x",
      hdr.class, hdr.tag);
  goto fail;
 }

 if (hdr.tag == 1) {

  if (x509_parse_name(hdr.payload, hdr.length, &name, &pos) < 0)
   goto fail;
  x509_name_string(&name, buf, sizeof(buf));
  wpa_printf(MSG_DEBUG, "OCSP: ResponderID byName Name: %s", buf);
 } else if (hdr.tag == 2) {

  if (asn1_get_next(hdr.payload, hdr.length, &hdr) < 0 ||
      hdr.class != ASN1_CLASS_UNIVERSAL ||
      hdr.tag != ASN1_TAG_OCTETSTRING) {
   wpa_printf(MSG_DEBUG,
       "OCSP: Expected OCTET STRING (KeyHash) - found class %d tag 0x%x",
       hdr.class, hdr.tag);
   goto fail;
  }
  key_hash = hdr.payload;
  wpa_hexdump(MSG_DEBUG, "OCSP: ResponderID byKey KeyHash",
       key_hash, hdr.length);
  if (hdr.length != SHA1_MAC_LEN) {
   wpa_printf(MSG_DEBUG,
       "OCSP: Unexpected byKey KeyHash length %u - expected %u for SHA-1",
       hdr.length, SHA1_MAC_LEN);
   goto fail;
  }
  pos = hdr.payload + hdr.length;
 } else {
  wpa_printf(MSG_DEBUG, "OCSP: Unexpected ResponderID CHOICE %u",
      hdr.tag);
  goto fail;
 }


 if (asn1_get_next(pos, end - pos, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_GENERALIZEDTIME ||
     x509_parse_time(hdr.payload, hdr.length, hdr.tag,
       &produced_at) < 0) {
  wpa_printf(MSG_DEBUG, "OCSP: Failed to parse producedAt");
  goto fail;
 }
 wpa_printf(MSG_DEBUG, "OCSP: producedAt %lu",
     (unsigned long) produced_at);
 pos = hdr.payload + hdr.length;


 if (asn1_get_next(pos, end - pos, &hdr) < 0 ||
     hdr.class != ASN1_CLASS_UNIVERSAL ||
     hdr.tag != ASN1_TAG_SEQUENCE) {
  wpa_printf(MSG_DEBUG,
      "OCSP: Expected SEQUENCE (responses) - found class %d tag 0x%x",
      hdr.class, hdr.tag);
  goto fail;
 }
 responses = hdr.payload;
 responses_len = hdr.length;
 wpa_hexdump(MSG_MSGDUMP, "OCSP: responses", responses, responses_len);
 pos = hdr.payload + hdr.length;

 if (pos < end) {

  wpa_hexdump(MSG_MSGDUMP, "OCSP: responseExtensions",
       pos, end - pos);

 }

 if (!srv_cert) {
  wpa_printf(MSG_DEBUG,
      "OCSP: Server certificate not known - cannot check OCSP response");
  goto no_resp;
 }

 if (srv_cert->next) {

  issuer = srv_cert->next;
 } else {

  for (issuer = conn->cred ? conn->cred->trusted_certs : ((void*)0);
       issuer; issuer = issuer->next) {
   if (x509_name_compare(&srv_cert->issuer,
           &issuer->subject) == 0)
    break;
  }
 }
 if (!issuer) {
  wpa_printf(MSG_DEBUG,
      "OCSP: Server certificate issuer not known - cannot check OCSP response");
  goto no_resp;
 }

 if (ocsp_responder_id_match(issuer, &name, key_hash)) {
  wpa_printf(MSG_DEBUG,
      "OCSP: Server certificate issuer certificate matches ResponderID");
  signer = issuer;
 } else {
  for (signer = certs; signer; signer = signer->next) {
   if (!ocsp_responder_id_match(signer, &name, key_hash) ||
       x509_name_compare(&srv_cert->issuer,
           &issuer->subject) != 0 ||
       !(signer->ext_key_usage &
         X509_EXT_KEY_USAGE_OCSP) ||
       x509_certificate_check_signature(issuer, signer) <
       0)
    continue;
   wpa_printf(MSG_DEBUG,
       "OCSP: An extra certificate from the response matches ResponderID and is trusted as an OCSP signer");
   break;
  }
  if (!signer) {
   wpa_printf(MSG_DEBUG,
       "OCSP: Could not find OCSP signer certificate");
   goto no_resp;
  }
 }

 x509_free_name(&name);
 os_memset(&name, 0, sizeof(name));
 x509_certificate_chain_free(certs);
 certs = ((void*)0);

 if (x509_check_signature(signer, &alg, sign_value, sign_value_len,
     resp_data_signed, resp_data_signed_len) < 0) {
      wpa_printf(MSG_DEBUG, "OCSP: Invalid signature");
      return TLS_OCSP_INVALID;
 }

 res = tls_process_ocsp_responses(conn, srv_cert, issuer,
      responses, responses_len);
 if (res == TLS_OCSP_REVOKED)
  srv_cert->ocsp_revoked = 1;
 else if (res == TLS_OCSP_GOOD)
  srv_cert->ocsp_good = 1;
 return res;

no_resp:
 x509_free_name(&name);
 x509_certificate_chain_free(certs);
 return TLS_OCSP_NO_RESPONSE;

fail:
 x509_free_name(&name);
 x509_certificate_chain_free(certs);
 return TLS_OCSP_INVALID;
}
