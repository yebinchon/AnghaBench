
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD ;


 int const* EVP_md5 () ;
 int const* EVP_sha1 () ;
 int const* EVP_sha256 () ;
 int const* EVP_sha384 () ;
 int const* EVP_sha512 () ;
 scalar_t__ strcasecmp (char*,char*) ;

__attribute__((used)) static const EVP_MD *
ldns_digest_function(char *name)
{


 if (strcasecmp(name, "hmac-sha512.") == 0) {



  return ((void*)0);

 } else if (strcasecmp(name, "hmac-shac384.") == 0) {



  return ((void*)0);

 } else if (strcasecmp(name, "hmac-sha256.") == 0) {



  return ((void*)0);

 } else if (strcasecmp(name, "hmac-sha1.") == 0) {
  return EVP_sha1();
 } else if (strcasecmp(name, "hmac-md5.sig-alg.reg.int.") == 0) {
  return EVP_md5();
 } else {
  return ((void*)0);
 }
}
