
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;






 int EVP_PKEY_id (int const*) ;
 int EVP_PKEY_type (int ) ;

__attribute__((used)) static const char * openssl_pkey_type_str(const EVP_PKEY *pkey)
{
 if (!pkey)
  return "NULL";
 switch (EVP_PKEY_type(EVP_PKEY_id(pkey))) {
 case 128:
  return "RSA";
 case 130:
  return "DSA";
 case 131:
  return "DH";
 case 129:
  return "EC";
 }
 return "?";
}
