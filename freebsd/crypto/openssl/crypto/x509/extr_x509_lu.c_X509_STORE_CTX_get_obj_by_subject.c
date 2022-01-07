
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE_CTX ;
typedef int X509_OBJECT ;
typedef int X509_NAME ;
typedef int X509_LOOKUP_TYPE ;


 int X509_OBJECT_free (int *) ;
 int * X509_OBJECT_new () ;
 int X509_STORE_CTX_get_by_subject (int *,int ,int *,int *) ;

X509_OBJECT *X509_STORE_CTX_get_obj_by_subject(X509_STORE_CTX *vs,
                                               X509_LOOKUP_TYPE type,
                                               X509_NAME *name)
{
    X509_OBJECT *ret = X509_OBJECT_new();

    if (ret == ((void*)0))
        return ((void*)0);
    if (!X509_STORE_CTX_get_by_subject(vs, type, name, ret)) {
        X509_OBJECT_free(ret);
        return ((void*)0);
    }
    return ret;
}
