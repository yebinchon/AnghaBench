
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int des_set_odd_parity (unsigned char*) ;

void des_fixup_key_parity(unsigned char *key)
{
 des_set_odd_parity(key);
}
