
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char * wolfssl_tls_err_string(int err, const char *err_str)
{
 switch (err) {
 case 128:
  return "certificate is not yet valid";
 case 129:
  return "certificate has expired";
 default:
  return err_str;
 }
}
