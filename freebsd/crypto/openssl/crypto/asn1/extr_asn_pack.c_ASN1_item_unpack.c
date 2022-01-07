
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* data; int length; } ;
typedef TYPE_1__ ASN1_STRING ;
typedef int ASN1_ITEM ;


 int ASN1_F_ASN1_ITEM_UNPACK ;
 int ASN1_R_DECODE_ERROR ;
 void* ASN1_item_d2i (int *,unsigned char const**,int ,int const*) ;
 int ASN1err (int ,int ) ;

void *ASN1_item_unpack(const ASN1_STRING *oct, const ASN1_ITEM *it)
{
    const unsigned char *p;
    void *ret;

    p = oct->data;
    if ((ret = ASN1_item_d2i(((void*)0), &p, oct->length, it)) == ((void*)0))
        ASN1err(ASN1_F_ASN1_ITEM_UNPACK, ASN1_R_DECODE_ERROR);
    return ret;
}
