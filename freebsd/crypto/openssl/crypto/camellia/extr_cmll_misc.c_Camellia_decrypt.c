
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rd_key; } ;
struct TYPE_5__ {TYPE_1__ u; int grand_rounds; } ;
typedef TYPE_2__ CAMELLIA_KEY ;


 int Camellia_DecryptBlock_Rounds (int ,unsigned char const*,int ,unsigned char*) ;

void Camellia_decrypt(const unsigned char *in, unsigned char *out,
                      const CAMELLIA_KEY *key)
{
    Camellia_DecryptBlock_Rounds(key->grand_rounds, in, key->u.rd_key, out);
}
