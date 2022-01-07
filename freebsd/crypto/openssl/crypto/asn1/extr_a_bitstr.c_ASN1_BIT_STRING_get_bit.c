
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; int* data; } ;
typedef TYPE_1__ ASN1_BIT_STRING ;



int ASN1_BIT_STRING_get_bit(const ASN1_BIT_STRING *a, int n)
{
    int w, v;

    w = n / 8;
    v = 1 << (7 - (n & 0x07));
    if ((a == ((void*)0)) || (a->length < (w + 1)) || (a->data == ((void*)0)))
        return 0;
    return ((a->data[w] & v) != 0);
}
