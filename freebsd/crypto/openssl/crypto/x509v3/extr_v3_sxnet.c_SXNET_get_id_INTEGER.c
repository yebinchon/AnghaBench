
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ids; } ;
struct TYPE_5__ {int * user; int zone; } ;
typedef TYPE_1__ SXNETID ;
typedef TYPE_2__ SXNET ;
typedef int ASN1_OCTET_STRING ;
typedef int ASN1_INTEGER ;


 int ASN1_INTEGER_cmp (int ,int *) ;
 int sk_SXNETID_num (int ) ;
 TYPE_1__* sk_SXNETID_value (int ,int) ;

ASN1_OCTET_STRING *SXNET_get_id_INTEGER(SXNET *sx, ASN1_INTEGER *zone)
{
    SXNETID *id;
    int i;
    for (i = 0; i < sk_SXNETID_num(sx->ids); i++) {
        id = sk_SXNETID_value(sx->ids, i);
        if (!ASN1_INTEGER_cmp(id->zone, zone))
            return id->user;
    }
    return ((void*)0);
}
