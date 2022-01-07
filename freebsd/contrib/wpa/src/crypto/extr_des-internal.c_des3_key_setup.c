
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct des3_key_s {int * dk; int * ek; } ;


 int deskey (int const*,int,int ) ;

void des3_key_setup(const u8 *key, struct des3_key_s *dkey)
{
 deskey(key, 0, dkey->ek[0]);
 deskey(key + 8, 1, dkey->ek[1]);
 deskey(key + 16, 0, dkey->ek[2]);

 deskey(key, 1, dkey->dk[2]);
 deskey(key + 8, 0, dkey->dk[1]);
 deskey(key + 16, 1, dkey->dk[0]);
}
