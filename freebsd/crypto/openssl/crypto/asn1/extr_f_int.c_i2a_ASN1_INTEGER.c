
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int length; scalar_t__* data; } ;
typedef int BIO ;
typedef TYPE_1__ ASN1_INTEGER ;


 int BIO_write (int *,char*,int) ;
 int V_ASN1_NEG ;

int i2a_ASN1_INTEGER(BIO *bp, const ASN1_INTEGER *a)
{
    int i, n = 0;
    static const char *h = "0123456789ABCDEF";
    char buf[2];

    if (a == ((void*)0))
        return 0;

    if (a->type & V_ASN1_NEG) {
        if (BIO_write(bp, "-", 1) != 1)
            goto err;
        n = 1;
    }

    if (a->length == 0) {
        if (BIO_write(bp, "00", 2) != 2)
            goto err;
        n += 2;
    } else {
        for (i = 0; i < a->length; i++) {
            if ((i != 0) && (i % 35 == 0)) {
                if (BIO_write(bp, "\\\n", 2) != 2)
                    goto err;
                n += 2;
            }
            buf[0] = h[((unsigned char)a->data[i] >> 4) & 0x0f];
            buf[1] = h[((unsigned char)a->data[i]) & 0x0f];
            if (BIO_write(bp, buf, 2) != 2)
                goto err;
            n += 2;
        }
    }
    return n;
 err:
    return -1;
}
