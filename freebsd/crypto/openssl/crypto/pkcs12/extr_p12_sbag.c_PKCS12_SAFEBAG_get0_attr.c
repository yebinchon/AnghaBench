
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int attrib; } ;
typedef TYPE_1__ PKCS12_SAFEBAG ;
typedef int ASN1_TYPE ;


 int const* PKCS12_get_attr_gen (int ,int) ;

const ASN1_TYPE *PKCS12_SAFEBAG_get0_attr(const PKCS12_SAFEBAG *bag,
                                          int attr_nid)
{
    return PKCS12_get_attr_gen(bag->attrib, attr_nid);
}
