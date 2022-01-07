
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int nid; } ;
struct TYPE_9__ {TYPE_1__* obj; int type; } ;
struct TYPE_8__ {scalar_t__ nid; scalar_t__ length; } ;
typedef TYPE_1__ ASN1_OBJECT ;
typedef TYPE_2__ ADDED_OBJ ;


 int ADDED_DATA ;
 int NID_undef ;
 int NUM_OBJ ;
 unsigned int* OBJ_bsearch_obj (TYPE_1__ const**,int ,int ) ;
 int * added ;
 TYPE_2__* lh_ADDED_OBJ_retrieve (int *,TYPE_2__*) ;
 TYPE_3__* nid_objs ;
 int obj_objs ;

int OBJ_obj2nid(const ASN1_OBJECT *a)
{
    const unsigned int *op;
    ADDED_OBJ ad, *adp;

    if (a == ((void*)0))
        return NID_undef;
    if (a->nid != 0)
        return a->nid;

    if (a->length == 0)
        return NID_undef;

    if (added != ((void*)0)) {
        ad.type = ADDED_DATA;
        ad.obj = (ASN1_OBJECT *)a;
        adp = lh_ADDED_OBJ_retrieve(added, &ad);
        if (adp != ((void*)0))
            return adp->obj->nid;
    }
    op = OBJ_bsearch_obj(&a, obj_objs, NUM_OBJ);
    if (op == ((void*)0))
        return NID_undef;
    return nid_objs[*op].nid;
}
