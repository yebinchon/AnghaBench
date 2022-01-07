
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
typedef int FILE ;


 unsigned char* base64_encode (int ,int ,int *) ;
 int fprintf (int *,char*,char const*,unsigned char*) ;
 int os_free (unsigned char*) ;
 int wpabuf_head (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;

__attribute__((used)) static void eapol_test_write_cert(FILE *f, const char *subject,
      const struct wpabuf *cert)
{
 unsigned char *encoded;

 encoded = base64_encode(wpabuf_head(cert), wpabuf_len(cert), ((void*)0));
 if (encoded == ((void*)0))
  return;
 fprintf(f, "%s\n-----BEGIN CERTIFICATE-----\n%s"
  "-----END CERTIFICATE-----\n\n", subject, encoded);
 os_free(encoded);
}
