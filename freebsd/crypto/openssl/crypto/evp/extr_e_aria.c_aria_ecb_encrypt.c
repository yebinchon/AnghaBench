
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ARIA_KEY ;


 int aria_encrypt (unsigned char const*,unsigned char*,int const*) ;

__attribute__((used)) static void aria_ecb_encrypt(const unsigned char *in, unsigned char *out,
                             const ARIA_KEY *key, const int enc)
{
    aria_encrypt(in, out, key);
}
