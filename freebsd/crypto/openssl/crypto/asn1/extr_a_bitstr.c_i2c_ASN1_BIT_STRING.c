
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; int flags; int* data; } ;
typedef TYPE_1__ ASN1_BIT_STRING ;


 int ASN1_STRING_FLAG_BITS_LEFT ;
 int memcpy (unsigned char*,unsigned char*,int) ;

int i2c_ASN1_BIT_STRING(ASN1_BIT_STRING *a, unsigned char **pp)
{
    int ret, j, bits, len;
    unsigned char *p, *d;

    if (a == ((void*)0))
        return 0;

    len = a->length;

    if (len > 0) {
        if (a->flags & ASN1_STRING_FLAG_BITS_LEFT) {
            bits = (int)a->flags & 0x07;
        } else {
            for (; len > 0; len--) {
                if (a->data[len - 1])
                    break;
            }
            j = a->data[len - 1];
            if (j & 0x01)
                bits = 0;
            else if (j & 0x02)
                bits = 1;
            else if (j & 0x04)
                bits = 2;
            else if (j & 0x08)
                bits = 3;
            else if (j & 0x10)
                bits = 4;
            else if (j & 0x20)
                bits = 5;
            else if (j & 0x40)
                bits = 6;
            else if (j & 0x80)
                bits = 7;
            else
                bits = 0;
        }
    } else
        bits = 0;

    ret = 1 + len;
    if (pp == ((void*)0))
        return ret;

    p = *pp;

    *(p++) = (unsigned char)bits;
    d = a->data;
    if (len > 0) {
        memcpy(p, d, len);
        p += len;
        p[-1] &= (0xff << bits);
    }
    *pp = p;
    return ret;
}
