
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* bag; } ;
struct TYPE_8__ {TYPE_2__ value; } ;
struct TYPE_6__ {int type; } ;
typedef TYPE_3__ PKCS12_SAFEBAG ;


 int NID_certBag ;
 int NID_crlBag ;
 int NID_secretBag ;
 int OBJ_obj2nid (int ) ;
 int PKCS12_SAFEBAG_get_nid (TYPE_3__ const*) ;

int PKCS12_SAFEBAG_get_bag_nid(const PKCS12_SAFEBAG *bag)
{
    int btype = PKCS12_SAFEBAG_get_nid(bag);

    if (btype != NID_certBag && btype != NID_crlBag && btype != NID_secretBag)
        return -1;
    return OBJ_obj2nid(bag->value.bag->type);
}
