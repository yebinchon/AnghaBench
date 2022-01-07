
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mdstr ;
typedef int X509 ;
typedef int SSL ;


 int EVP_MAX_MD_SIZE ;
 int EVP_sha256 () ;
 int EX_NOPERM ;
 int EX_TEMPFAIL ;
 int PJDLOG_ASSERT (int) ;
 int PJDLOG_VERIFY (int) ;
 int * SSL_get_peer_certificate (int *) ;
 int X509_digest (int *,int ,unsigned char*,unsigned int*) ;
 int X509_free (int *) ;
 int pjdlog_debug (int,char*) ;
 int pjdlog_exitx (int ,char*,...) ;
 int sprintf (char*,char*,unsigned char) ;
 scalar_t__ strcasecmp (char*,char const*) ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static void
tls_certificate_verify(SSL *ssl, const char *fingerprint)
{
 unsigned char md[EVP_MAX_MD_SIZE];
 char mdstr[sizeof("SHA256=") - 1 + EVP_MAX_MD_SIZE * 3];
 char *mdstrp;
 unsigned int i, mdsize;
 X509 *cert;

 if (fingerprint[0] == '\0') {
  pjdlog_debug(1, "No fingerprint verification requested.");
  return;
 }

 cert = SSL_get_peer_certificate(ssl);
 if (cert == ((void*)0))
  pjdlog_exitx(EX_TEMPFAIL, "No peer certificate received.");

 if (X509_digest(cert, EVP_sha256(), md, &mdsize) != 1)
  pjdlog_exitx(EX_TEMPFAIL, "X509_digest() failed.");
 PJDLOG_ASSERT(mdsize <= EVP_MAX_MD_SIZE);

 X509_free(cert);

 (void)strlcpy(mdstr, "SHA256=", sizeof(mdstr));
 mdstrp = mdstr + strlen(mdstr);
 for (i = 0; i < mdsize; i++) {
  PJDLOG_VERIFY(mdstrp + 3 <= mdstr + sizeof(mdstr));
  (void)sprintf(mdstrp, "%02hhX:", md[i]);
  mdstrp += 3;
 }

 mdstrp[-1] = '\0';
 if (strcasecmp(mdstr, fingerprint) != 0) {
  pjdlog_exitx(EX_NOPERM,
      "Finger print doesn't match. Received \"%s\", expected \"%s\"",
      mdstr, fingerprint);
 }
}
