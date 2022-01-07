
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; unsigned char* data; int type; } ;
typedef int EC_KEY ;
typedef int EC_GROUP ;
typedef TYPE_1__ ASN1_INTEGER ;


 int ASN1_object_size (int,int,int ) ;
 int EC_GROUP_order_bits (int const*) ;
 int * EC_KEY_get0_group (int const*) ;
 int V_ASN1_INTEGER ;
 int V_ASN1_SEQUENCE ;
 int i2d_ASN1_INTEGER (TYPE_1__*,int *) ;

int ECDSA_size(const EC_KEY *r)
{
    int ret, i;
    ASN1_INTEGER bs;
    unsigned char buf[4];
    const EC_GROUP *group;

    if (r == ((void*)0))
        return 0;
    group = EC_KEY_get0_group(r);
    if (group == ((void*)0))
        return 0;

    i = EC_GROUP_order_bits(group);
    if (i == 0)
        return 0;
    bs.length = (i + 7) / 8;
    bs.data = buf;
    bs.type = V_ASN1_INTEGER;

    buf[0] = 0xff;

    i = i2d_ASN1_INTEGER(&bs, ((void*)0));
    i += i;
    ret = ASN1_object_size(1, i, V_ASN1_SEQUENCE);
    return ret;
}
