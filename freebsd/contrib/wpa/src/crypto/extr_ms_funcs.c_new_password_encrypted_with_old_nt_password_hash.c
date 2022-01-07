
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ encrypt_pw_block_with_password_hash (int const*,size_t,int *,int *) ;
 scalar_t__ nt_password_hash (int const*,size_t,int *) ;

int new_password_encrypted_with_old_nt_password_hash(
 const u8 *new_password, size_t new_password_len,
 const u8 *old_password, size_t old_password_len,
 u8 *encrypted_pw_block)
{
 u8 password_hash[16];

 if (nt_password_hash(old_password, old_password_len, password_hash))
  return -1;
 if (encrypt_pw_block_with_password_hash(new_password, new_password_len,
      password_hash,
      encrypted_pw_block))
  return -1;
 return 0;
}
