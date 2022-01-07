
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ des_encrypt (int const*,int const*,int *) ;

int nt_password_hash_encrypted_with_block(const u8 *password_hash,
       const u8 *block, u8 *cypher)
{
 if (des_encrypt(password_hash, block, cypher) < 0 ||
     des_encrypt(password_hash + 8, block + 7, cypher + 8) < 0)
  return -1;
 return 0;
}
