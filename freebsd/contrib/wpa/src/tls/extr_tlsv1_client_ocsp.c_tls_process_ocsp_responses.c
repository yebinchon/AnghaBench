
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct x509_certificate {int dummy; } ;
struct tlsv1_client {int dummy; } ;
struct asn1_hdr {scalar_t__ class; scalar_t__ tag; int length; int * payload; } ;
typedef enum tls_ocsp_result { ____Placeholder_tls_ocsp_result } tls_ocsp_result ;


 scalar_t__ ASN1_CLASS_UNIVERSAL ;
 scalar_t__ ASN1_TAG_SEQUENCE ;
 int MSG_DEBUG ;
 int TLS_OCSP_INVALID ;
 int TLS_OCSP_NO_RESPONSE ;
 scalar_t__ asn1_get_next (int const*,int,struct asn1_hdr*) ;
 scalar_t__ tls_process_ocsp_single_response (struct tlsv1_client*,struct x509_certificate*,struct x509_certificate*,int *,int,int*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static enum tls_ocsp_result
tls_process_ocsp_responses(struct tlsv1_client *conn,
      struct x509_certificate *cert,
      struct x509_certificate *issuer, const u8 *resp,
      size_t len)
{
 struct asn1_hdr hdr;
 const u8 *pos, *end;
 enum tls_ocsp_result res;

 pos = resp;
 end = resp + len;
 while (pos < end) {

  if (asn1_get_next(pos, end - pos, &hdr) < 0 ||
      hdr.class != ASN1_CLASS_UNIVERSAL ||
      hdr.tag != ASN1_TAG_SEQUENCE) {
   wpa_printf(MSG_DEBUG,
       "OCSP: Expected SEQUENCE (SingleResponse) - found class %d tag 0x%x",
       hdr.class, hdr.tag);
   return TLS_OCSP_INVALID;
  }
  if (tls_process_ocsp_single_response(conn, cert, issuer,
           hdr.payload, hdr.length,
           &res) == 0)
   return res;
  pos = hdr.payload + hdr.length;
 }

 wpa_printf(MSG_DEBUG,
     "OCSP: Did not find a response matching the server certificate");
 return TLS_OCSP_NO_RESPONSE;
}
