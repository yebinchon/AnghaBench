
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long* data; int rounds; } ;
typedef TYPE_1__ RC5_32_KEY ;
typedef unsigned long RC5_32_INT ;


 int E_RC5_32 (unsigned long,unsigned long,unsigned long*,int) ;

void RC5_32_encrypt(unsigned long *d, RC5_32_KEY *key)
{
    RC5_32_INT a, b, *s;

    s = key->data;

    a = d[0] + s[0];
    b = d[1] + s[1];
    E_RC5_32(a, b, s, 2);
    E_RC5_32(a, b, s, 4);
    E_RC5_32(a, b, s, 6);
    E_RC5_32(a, b, s, 8);
    E_RC5_32(a, b, s, 10);
    E_RC5_32(a, b, s, 12);
    E_RC5_32(a, b, s, 14);
    E_RC5_32(a, b, s, 16);
    if (key->rounds == 12) {
        E_RC5_32(a, b, s, 18);
        E_RC5_32(a, b, s, 20);
        E_RC5_32(a, b, s, 22);
        E_RC5_32(a, b, s, 24);
    } else if (key->rounds == 16) {

        E_RC5_32(a, b, s, 18);
        E_RC5_32(a, b, s, 20);
        E_RC5_32(a, b, s, 22);
        E_RC5_32(a, b, s, 24);
        E_RC5_32(a, b, s, 26);
        E_RC5_32(a, b, s, 28);
        E_RC5_32(a, b, s, 30);
        E_RC5_32(a, b, s, 32);
    }
    d[0] = a;
    d[1] = b;
}
