
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ (* check_issued ) (TYPE_2__*,int *,int *) ;TYPE_3__* ctx; } ;
typedef TYPE_2__ X509_STORE_CTX ;
struct TYPE_18__ {int objs; } ;
typedef TYPE_3__ X509_STORE ;
struct TYPE_16__ {int * x509; } ;
struct TYPE_19__ {scalar_t__ type; TYPE_1__ data; } ;
typedef TYPE_4__ X509_OBJECT ;
typedef int X509_NAME ;
typedef int X509 ;


 scalar_t__ X509_LU_X509 ;
 scalar_t__ X509_NAME_cmp (int *,int ) ;
 int X509_OBJECT_free (TYPE_4__*) ;
 int X509_OBJECT_idx_by_subject (int ,scalar_t__,int *) ;
 TYPE_4__* X509_OBJECT_new () ;
 int X509_STORE_CTX_get_by_subject (TYPE_2__*,scalar_t__,int *,TYPE_4__*) ;
 int X509_STORE_lock (TYPE_3__*) ;
 int X509_STORE_unlock (TYPE_3__*) ;
 int * X509_get_issuer_name (int *) ;
 int X509_get_subject_name (int *) ;
 int X509_up_ref (int *) ;
 int sk_X509_OBJECT_num (int ) ;
 TYPE_4__* sk_X509_OBJECT_value (int ,int) ;
 scalar_t__ stub1 (TYPE_2__*,int *,int *) ;
 scalar_t__ stub2 (TYPE_2__*,int *,int *) ;
 scalar_t__ x509_check_cert_time (TYPE_2__*,int *,int) ;

int X509_STORE_CTX_get1_issuer(X509 **issuer, X509_STORE_CTX *ctx, X509 *x)
{
    X509_NAME *xn;
    X509_OBJECT *obj = X509_OBJECT_new(), *pobj = ((void*)0);
    X509_STORE *store = ctx->ctx;
    int i, ok, idx, ret;

    if (obj == ((void*)0))
        return -1;
    *issuer = ((void*)0);
    xn = X509_get_issuer_name(x);
    ok = X509_STORE_CTX_get_by_subject(ctx, X509_LU_X509, xn, obj);
    if (ok != 1) {
        X509_OBJECT_free(obj);
        return 0;
    }

    if (ctx->check_issued(ctx, x, obj->data.x509)) {
        if (x509_check_cert_time(ctx, obj->data.x509, -1)) {
            *issuer = obj->data.x509;
            if (!X509_up_ref(*issuer)) {
                *issuer = ((void*)0);
                ok = -1;
            }
            X509_OBJECT_free(obj);
            return ok;
        }
    }
    X509_OBJECT_free(obj);

    if (store == ((void*)0))
        return 0;


    ret = 0;
    X509_STORE_lock(store);
    idx = X509_OBJECT_idx_by_subject(store->objs, X509_LU_X509, xn);
    if (idx != -1) {


        for (i = idx; i < sk_X509_OBJECT_num(store->objs); i++) {
            pobj = sk_X509_OBJECT_value(store->objs, i);

            if (pobj->type != X509_LU_X509)
                break;
            if (X509_NAME_cmp(xn, X509_get_subject_name(pobj->data.x509)))
                break;
            if (ctx->check_issued(ctx, x, pobj->data.x509)) {
                *issuer = pobj->data.x509;
                ret = 1;







                if (x509_check_cert_time(ctx, *issuer, -1))
                    break;
            }
        }
    }
    if (*issuer && !X509_up_ref(*issuer)) {
        *issuer = ((void*)0);
        ret = -1;
    }
    X509_STORE_unlock(store);
    return ret;
}
