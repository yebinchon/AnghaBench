
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * other; } ;
struct TYPE_5__ {TYPE_1__ d; int type; } ;
typedef TYPE_2__ PKCS7 ;
typedef int ASN1_TYPE ;


 int OBJ_nid2obj (int) ;

int PKCS7_set0_type_other(PKCS7 *p7, int type, ASN1_TYPE *other)
{
    p7->type = OBJ_nid2obj(type);
    p7->d.other = other;
    return 1;
}
