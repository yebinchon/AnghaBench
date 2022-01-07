
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_3__* ctx; } ;
typedef TYPE_2__ X509_STORE_CTX ;
struct TYPE_14__ {int get_cert_methods; int objs; } ;
typedef TYPE_3__ X509_STORE ;
struct TYPE_12__ {int * ptr; } ;
struct TYPE_15__ {TYPE_1__ data; int type; } ;
typedef TYPE_4__ X509_OBJECT ;
typedef int X509_NAME ;
typedef int X509_LOOKUP_TYPE ;
typedef int X509_LOOKUP ;


 int X509_LOOKUP_by_subject (int *,int ,int *,TYPE_4__*) ;
 int X509_LU_CRL ;
 int X509_LU_NONE ;
 TYPE_4__* X509_OBJECT_retrieve_by_subject (int ,int ,int *) ;
 int X509_OBJECT_up_ref_count (TYPE_4__*) ;
 int X509_STORE_lock (TYPE_3__*) ;
 int X509_STORE_unlock (TYPE_3__*) ;
 int sk_X509_LOOKUP_num (int ) ;
 int * sk_X509_LOOKUP_value (int ,int) ;

int X509_STORE_CTX_get_by_subject(X509_STORE_CTX *vs, X509_LOOKUP_TYPE type,
                                  X509_NAME *name, X509_OBJECT *ret)
{
    X509_STORE *store = vs->ctx;
    X509_LOOKUP *lu;
    X509_OBJECT stmp, *tmp;
    int i, j;

    if (store == ((void*)0))
        return 0;

    stmp.type = X509_LU_NONE;
    stmp.data.ptr = ((void*)0);


    X509_STORE_lock(store);
    tmp = X509_OBJECT_retrieve_by_subject(store->objs, type, name);
    X509_STORE_unlock(store);

    if (tmp == ((void*)0) || type == X509_LU_CRL) {
        for (i = 0; i < sk_X509_LOOKUP_num(store->get_cert_methods); i++) {
            lu = sk_X509_LOOKUP_value(store->get_cert_methods, i);
            j = X509_LOOKUP_by_subject(lu, type, name, &stmp);
            if (j) {
                tmp = &stmp;
                break;
            }
        }
        if (tmp == ((void*)0))
            return 0;
    }

    if (!X509_OBJECT_up_ref_count(tmp))
        return 0;

    ret->type = tmp->type;
    ret->data.ptr = tmp->data.ptr;

    return 1;
}
