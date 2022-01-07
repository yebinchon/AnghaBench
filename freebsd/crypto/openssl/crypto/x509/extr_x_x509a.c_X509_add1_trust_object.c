
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * trust; } ;
typedef TYPE_1__ X509_CERT_AUX ;
typedef int X509 ;
typedef int ASN1_OBJECT ;


 int ASN1_OBJECT_free (int *) ;
 int * OBJ_dup (int const*) ;
 TYPE_1__* aux_get (int *) ;
 int * sk_ASN1_OBJECT_new_null () ;
 scalar_t__ sk_ASN1_OBJECT_push (int *,int *) ;

int X509_add1_trust_object(X509 *x, const ASN1_OBJECT *obj)
{
    X509_CERT_AUX *aux;
    ASN1_OBJECT *objtmp = ((void*)0);
    if (obj) {
        objtmp = OBJ_dup(obj);
        if (!objtmp)
            return 0;
    }
    if ((aux = aux_get(x)) == ((void*)0))
        goto err;
    if (aux->trust == ((void*)0)
        && (aux->trust = sk_ASN1_OBJECT_new_null()) == ((void*)0))
        goto err;
    if (!objtmp || sk_ASN1_OBJECT_push(aux->trust, objtmp))
        return 1;
 err:
    ASN1_OBJECT_free(objtmp);
    return 0;
}
