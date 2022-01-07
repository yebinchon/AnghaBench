
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int md4_vector (int,int const**,size_t*,int *) ;

int hash_nt_password_hash(const u8 *password_hash, u8 *password_hash_hash)
{
 size_t len = 16;
 return md4_vector(1, &password_hash, &len, password_hash_hash);
}
