
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int data; } ;
typedef TYPE_1__ ASN1_OCTET_STRING ;


 int memcpy (unsigned char*,int ,int) ;

__attribute__((used)) static int i2d_ocsp_nonce(void *a, unsigned char **pp)
{
    ASN1_OCTET_STRING *os = a;
    if (pp) {
        memcpy(*pp, os->data, os->length);
        *pp += os->length;
    }
    return os->length;
}
