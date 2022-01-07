
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int deskey (int const*,int,int *) ;

void des_key_setup(const u8 *key, u32 *ek, u32 *dk)
{
 deskey(key, 0, ek);
 deskey(key, 1, dk);
}
