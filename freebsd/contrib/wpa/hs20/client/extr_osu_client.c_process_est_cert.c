
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xml_node_t ;
typedef int u8 ;
struct hs20_osu_client {int xml; } ;
typedef int digest1 ;
typedef int buf ;
typedef int FILE ;


 int MSG_INFO ;
 int SHA256_MAC_LEN ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fwrite (char*,size_t,int,int *) ;
 scalar_t__ hexstr2bin (char*,int *,int) ;
 int os_free (char*) ;
 scalar_t__ os_memcmp (int *,int *,int) ;
 char* os_readfile (char*,size_t*) ;
 int os_snprintf (char*,int,char*,char const*) ;
 scalar_t__ rename (char*,char*) ;
 int rmdir (char*) ;
 scalar_t__ sha256_vector (int,int const**,size_t*,int *) ;
 char const* strerror (int ) ;
 int unlink (char*) ;
 int wpa_printf (int ,char*,...) ;
 int write_result (struct hs20_osu_client*,char*) ;
 char* xml_node_get_text (int ,int *) ;
 int xml_node_get_text_free (int ,char*) ;

__attribute__((used)) static int process_est_cert(struct hs20_osu_client *ctx, xml_node_t *cert,
       const char *fqdn)
{
 u8 digest1[SHA256_MAC_LEN], digest2[SHA256_MAC_LEN];
 char *der, *pem;
 size_t der_len, pem_len;
 char *fingerprint;
 char buf[200];

 wpa_printf(MSG_INFO, "PPS for certificate credential - fqdn=%s", fqdn);

 fingerprint = xml_node_get_text(ctx->xml, cert);
 if (fingerprint == ((void*)0))
  return -1;
 if (hexstr2bin(fingerprint, digest1, SHA256_MAC_LEN) < 0) {
  wpa_printf(MSG_INFO, "Invalid SHA256 hash value");
  write_result(ctx, "Invalid client certificate SHA256 hash value in PPS");
  xml_node_get_text_free(ctx->xml, fingerprint);
  return -1;
 }
 xml_node_get_text_free(ctx->xml, fingerprint);

 der = os_readfile("Cert/est_cert.der", &der_len);
 if (der == ((void*)0)) {
  wpa_printf(MSG_INFO, "Could not find client certificate from EST");
  write_result(ctx, "Could not find client certificate from EST");
  return -1;
 }

 if (sha256_vector(1, (const u8 **) &der, &der_len, digest2) < 0) {
  os_free(der);
  return -1;
 }
 os_free(der);

 if (os_memcmp(digest1, digest2, sizeof(digest1)) != 0) {
  wpa_printf(MSG_INFO, "Client certificate from EST does not match fingerprint from PPS MO");
  write_result(ctx, "Client certificate from EST does not match fingerprint from PPS MO");
  return -1;
 }

 wpa_printf(MSG_INFO, "Client certificate from EST matches PPS MO");
 unlink("Cert/est_cert.der");

 os_snprintf(buf, sizeof(buf), "SP/%s/client-ca.pem", fqdn);
 if (rename("Cert/est-cacerts.pem", buf) < 0) {
  wpa_printf(MSG_INFO, "Could not move est-cacerts.pem to client-ca.pem: %s",
      strerror(errno));
  return -1;
 }
 pem = os_readfile(buf, &pem_len);

 os_snprintf(buf, sizeof(buf), "SP/%s/client-cert.pem", fqdn);
 if (rename("Cert/est_cert.pem", buf) < 0) {
  wpa_printf(MSG_INFO, "Could not move est_cert.pem to client-cert.pem: %s",
      strerror(errno));
  os_free(pem);
  return -1;
 }

 if (pem) {
  FILE *f = fopen(buf, "a");
  if (f) {
   fwrite(pem, pem_len, 1, f);
   fclose(f);
  }
  os_free(pem);
 }

 os_snprintf(buf, sizeof(buf), "SP/%s/client-key.pem", fqdn);
 if (rename("Cert/privkey-plain.pem", buf) < 0) {
  wpa_printf(MSG_INFO, "Could not move privkey-plain.pem to client-key.pem: %s",
      strerror(errno));
  return -1;
 }

 unlink("Cert/est-req.b64");
 unlink("Cert/est-req.pem");
 rmdir("Cert");

 return 0;
}
