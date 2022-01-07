
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_GET_LIB (unsigned long) ;
 int ERR_GET_REASON (unsigned long) ;
 int SSH_ERR_INVALID_FORMAT ;
 int SSH_ERR_KEY_WRONG_PASSPHRASE ;
 int SSH_ERR_LIBCRYPTO_ERROR ;

__attribute__((used)) static int
translate_libcrypto_error(unsigned long pem_err)
{
 int pem_reason = ERR_GET_REASON(pem_err);

 switch (ERR_GET_LIB(pem_err)) {
 case 135:
  switch (pem_reason) {
  case 129:
  case 128:
  case 130:
   return SSH_ERR_KEY_WRONG_PASSPHRASE;
  default:
   return SSH_ERR_INVALID_FORMAT;
  }
 case 136:
  switch (pem_reason) {
  case 134:
   return SSH_ERR_KEY_WRONG_PASSPHRASE;

  case 133:

  case 132:

  case 131:

   return SSH_ERR_INVALID_FORMAT;
  default:
   return SSH_ERR_LIBCRYPTO_ERROR;
  }
 case 137:
  return SSH_ERR_INVALID_FORMAT;
 }
 return SSH_ERR_LIBCRYPTO_ERROR;
}
