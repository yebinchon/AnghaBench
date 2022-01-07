
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_peek_error () ;
 int ERR_peek_last_error () ;
 scalar_t__ SSH_ERR_KEY_WRONG_PASSPHRASE ;
 int translate_libcrypto_error (int ) ;

__attribute__((used)) static int
convert_libcrypto_error(void)
{




 if (translate_libcrypto_error(ERR_peek_error()) ==
     SSH_ERR_KEY_WRONG_PASSPHRASE)
  return SSH_ERR_KEY_WRONG_PASSPHRASE;
 return translate_libcrypto_error(ERR_peek_last_error());
}
