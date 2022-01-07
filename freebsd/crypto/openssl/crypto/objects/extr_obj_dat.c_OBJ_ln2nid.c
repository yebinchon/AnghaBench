
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int nid; } ;
struct TYPE_8__ {TYPE_1__* obj; int type; } ;
struct TYPE_7__ {char const* ln; int nid; } ;
typedef TYPE_1__ ASN1_OBJECT ;
typedef TYPE_2__ ADDED_OBJ ;


 int ADDED_LNAME ;
 int NID_undef ;
 int NUM_LN ;
 unsigned int* OBJ_bsearch_ln (TYPE_1__ const**,int ,int ) ;
 int * added ;
 TYPE_2__* lh_ADDED_OBJ_retrieve (int *,TYPE_2__*) ;
 int ln_objs ;
 TYPE_3__* nid_objs ;

int OBJ_ln2nid(const char *s)
{
    ASN1_OBJECT o;
    const ASN1_OBJECT *oo = &o;
    ADDED_OBJ ad, *adp;
    const unsigned int *op;

    o.ln = s;
    if (added != ((void*)0)) {
        ad.type = ADDED_LNAME;
        ad.obj = &o;
        adp = lh_ADDED_OBJ_retrieve(added, &ad);
        if (adp != ((void*)0))
            return adp->obj->nid;
    }
    op = OBJ_bsearch_ln(&oo, ln_objs, NUM_LN);
    if (op == ((void*)0))
        return NID_undef;
    return nid_objs[*op].nid;
}
