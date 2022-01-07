
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int length; int data; } ;
typedef TYPE_1__ ASN1_INTEGER ;


 int V_ASN1_NEG ;
 int i2c_ibuf (int ,int ,int,unsigned char**) ;

int i2c_ASN1_INTEGER(ASN1_INTEGER *a, unsigned char **pp)
{
    return i2c_ibuf(a->data, a->length, a->type & V_ASN1_NEG, pp);
}
