
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_EXTENSION ;
typedef int ASN1_OCTET_STRING ;
typedef int ASN1_OBJECT ;


 int ERR_R_MALLOC_FAILURE ;
 int X509_EXTENSION_free (int *) ;
 int * X509_EXTENSION_new () ;
 int X509_EXTENSION_set_critical (int *,int) ;
 int X509_EXTENSION_set_data (int *,int *) ;
 int X509_EXTENSION_set_object (int *,int const*) ;
 int X509_F_X509_EXTENSION_CREATE_BY_OBJ ;
 int X509err (int ,int ) ;

X509_EXTENSION *X509_EXTENSION_create_by_OBJ(X509_EXTENSION **ex,
                                             const ASN1_OBJECT *obj, int crit,
                                             ASN1_OCTET_STRING *data)
{
    X509_EXTENSION *ret;

    if ((ex == ((void*)0)) || (*ex == ((void*)0))) {
        if ((ret = X509_EXTENSION_new()) == ((void*)0)) {
            X509err(X509_F_X509_EXTENSION_CREATE_BY_OBJ,
                    ERR_R_MALLOC_FAILURE);
            return ((void*)0);
        }
    } else
        ret = *ex;

    if (!X509_EXTENSION_set_object(ret, obj))
        goto err;
    if (!X509_EXTENSION_set_critical(ret, crit))
        goto err;
    if (!X509_EXTENSION_set_data(ret, data))
        goto err;

    if ((ex != ((void*)0)) && (*ex == ((void*)0)))
        *ex = ret;
    return ret;
 err:
    if ((ex == ((void*)0)) || (ret != *ex))
        X509_EXTENSION_free(ret);
    return ((void*)0);
}
