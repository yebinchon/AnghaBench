
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rd_key; } ;
struct TYPE_5__ {TYPE_1__ u; int grand_rounds; } ;
typedef TYPE_2__ CAMELLIA_KEY ;


 int Camellia_Ekeygen (int const,unsigned char const*,int ) ;

int Camellia_set_key(const unsigned char *userKey, const int bits,
                     CAMELLIA_KEY *key)
{
    if (!userKey || !key)
        return -1;
    if (bits != 128 && bits != 192 && bits != 256)
        return -2;
    key->grand_rounds = Camellia_Ekeygen(bits, userKey, key->u.rd_key);
    return 0;
}
