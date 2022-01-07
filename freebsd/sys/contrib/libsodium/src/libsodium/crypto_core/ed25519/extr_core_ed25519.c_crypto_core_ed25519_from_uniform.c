
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ge25519_from_uniform (unsigned char*,unsigned char const*) ;
 int ge25519_has_small_order (unsigned char*) ;

int
crypto_core_ed25519_from_uniform(unsigned char *p, const unsigned char *r)
{
    ge25519_from_uniform(p, r);

    return - ge25519_has_small_order(p);
}
