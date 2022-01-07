
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {int * priv_key; int * pub_key; int * g; int * q; int * p; } ;
typedef TYPE_1__ DSA ;
typedef int BIGNUM ;


 int BN_bn2bin (int const*,...) ;
 unsigned char* BN_num_bytes (int const*) ;
 int DSA_get0_key (TYPE_1__*,int const**,int const**) ;
 int DSA_get0_pqg (TYPE_1__*,int const**,int const**,int const**) ;
 int fprintf (int ,char*) ;
 int memset (unsigned char*,int ,int) ;
 int stderr ;

__attribute__((used)) static bool
ldns_key_dsa2bin(unsigned char *data, DSA *k, uint16_t *size)
{
 uint8_t T;
 const BIGNUM *p, *q, *g;
 const BIGNUM *pub_key, *priv_key;

 if (!k) {
  return 0;
 }





 p = k->p; q = k->q; g = k->g;




 pub_key = k->pub_key; priv_key = k->priv_key;

 (void)priv_key;
 *size = (uint16_t)BN_num_bytes(p);
 T = (*size - 64) / 8;

 if (T > 8) {




  return 0;
 }


 memset(data, 0, 21 + *size * 3);
 data[0] = (unsigned char)T;
 BN_bn2bin(q, data + 1 );
 BN_bn2bin(p, data + 21 );
 BN_bn2bin(g, data + 21 + *size * 2 - BN_num_bytes(g));
 BN_bn2bin(pub_key,data + 21 + *size * 3 - BN_num_bytes(pub_key));
 *size = 21 + *size * 3;
 return 1;
}
