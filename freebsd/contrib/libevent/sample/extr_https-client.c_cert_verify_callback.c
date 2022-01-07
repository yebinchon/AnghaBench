
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cert_str ;
typedef int X509_STORE_CTX ;
typedef int X509 ;
typedef int HostnameValidationResult ;







 int X509_NAME_oneline (int ,char*,int) ;
 int * X509_STORE_CTX_get_current_cert (int *) ;
 int X509_get_subject_name (int *) ;
 int X509_verify_cert (int *) ;
 scalar_t__ ignore_cert ;
 int printf (char*,char const*,char const*,...) ;
 int validate_hostname (char const*,int *) ;

__attribute__((used)) static int cert_verify_callback(X509_STORE_CTX *x509_ctx, void *arg)
{
 char cert_str[256];
 const char *host = (const char *) arg;
 const char *res_str = "X509_verify_cert failed";
 HostnameValidationResult res = 132;




 int ok_so_far = 0;

 X509 *server_cert = ((void*)0);

 if (ignore_cert) {
  return 1;
 }

 ok_so_far = X509_verify_cert(x509_ctx);

 server_cert = X509_STORE_CTX_get_current_cert(x509_ctx);

 if (ok_so_far) {
  res = validate_hostname(host, server_cert);

  switch (res) {
  case 130:
   res_str = "MatchFound";
   break;
  case 129:
   res_str = "MatchNotFound";
   break;
  case 128:
   res_str = "NoSANPresent";
   break;
  case 131:
   res_str = "MalformedCertificate";
   break;
  case 132:
   res_str = "Error";
   break;
  default:
   res_str = "WTF!";
   break;
  }
 }

 X509_NAME_oneline(X509_get_subject_name (server_cert),
     cert_str, sizeof (cert_str));

 if (res == 130) {
  printf("https server '%s' has this certificate, "
         "which looks good to me:\n%s\n",
         host, cert_str);
  return 1;
 } else {
  printf("Got '%s' for hostname '%s' and certificate:\n%s\n",
         res_str, host, cert_str);
  return 0;
 }
}
