
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int length; unsigned char* data; } ;
typedef TYPE_1__ ASN1_BIT_STRING ;


 int ASN1_F_ASN1_BIT_STRING_SET_BIT ;
 int ASN1_STRING_FLAG_BITS_LEFT ;
 int ASN1err (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 unsigned char* OPENSSL_clear_realloc (unsigned char*,int,int) ;
 int memset (unsigned char*,int ,int) ;

int ASN1_BIT_STRING_set_bit(ASN1_BIT_STRING *a, int n, int value)
{
    int w, v, iv;
    unsigned char *c;

    w = n / 8;
    v = 1 << (7 - (n & 0x07));
    iv = ~v;
    if (!value)
        v = 0;

    if (a == ((void*)0))
        return 0;

    a->flags &= ~(ASN1_STRING_FLAG_BITS_LEFT | 0x07);

    if ((a->length < (w + 1)) || (a->data == ((void*)0))) {
        if (!value)
            return 1;
        c = OPENSSL_clear_realloc(a->data, a->length, w + 1);
        if (c == ((void*)0)) {
            ASN1err(ASN1_F_ASN1_BIT_STRING_SET_BIT, ERR_R_MALLOC_FAILURE);
            return 0;
        }
        if (w + 1 - a->length > 0)
            memset(c + a->length, 0, w + 1 - a->length);
        a->data = c;
        a->length = w + 1;
    }
    a->data[w] = ((a->data[w]) & iv) | v;
    while ((a->length > 0) && (a->data[a->length - 1] == 0))
        a->length--;
    return 1;
}
