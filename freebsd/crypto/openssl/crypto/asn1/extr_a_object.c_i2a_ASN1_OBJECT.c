
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int buf ;
struct TYPE_4__ {int length; int * data; } ;
typedef int BIO ;
typedef TYPE_1__ ASN1_OBJECT ;


 int ASN1_F_I2A_ASN1_OBJECT ;
 int ASN1err (int ,int ) ;
 scalar_t__ BIO_dump (int *,char const*,int ) ;
 int BIO_write (int *,char*,int) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_malloc (int) ;
 int i2t_ASN1_OBJECT (char*,int,TYPE_1__ const*) ;

int i2a_ASN1_OBJECT(BIO *bp, const ASN1_OBJECT *a)
{
    char buf[80], *p = buf;
    int i;

    if ((a == ((void*)0)) || (a->data == ((void*)0)))
        return BIO_write(bp, "NULL", 4);
    i = i2t_ASN1_OBJECT(buf, sizeof(buf), a);
    if (i > (int)(sizeof(buf) - 1)) {
        if ((p = OPENSSL_malloc(i + 1)) == ((void*)0)) {
            ASN1err(ASN1_F_I2A_ASN1_OBJECT, ERR_R_MALLOC_FAILURE);
            return -1;
        }
        i2t_ASN1_OBJECT(p, i + 1, a);
    }
    if (i <= 0) {
        i = BIO_write(bp, "<INVALID>", 9);
        i += BIO_dump(bp, (const char *)a->data, a->length);
        return i;
    }
    BIO_write(bp, p, i);
    if (p != buf)
        OPENSSL_free(p);
    return i;
}
