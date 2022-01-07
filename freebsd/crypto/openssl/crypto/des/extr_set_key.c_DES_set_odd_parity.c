
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t* DES_cblock ;


 unsigned int DES_KEY_SZ ;
 size_t* odd_parity ;

void DES_set_odd_parity(DES_cblock *key)
{
    unsigned int i;

    for (i = 0; i < DES_KEY_SZ; i++)
        (*key)[i] = odd_parity[(*key)[i]];
}
