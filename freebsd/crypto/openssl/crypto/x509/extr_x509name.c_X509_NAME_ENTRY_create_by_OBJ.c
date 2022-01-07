
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_NAME_ENTRY ;
typedef int ASN1_OBJECT ;


 int X509_NAME_ENTRY_free (int *) ;
 int * X509_NAME_ENTRY_new () ;
 int X509_NAME_ENTRY_set_data (int *,int,unsigned char const*,int) ;
 int X509_NAME_ENTRY_set_object (int *,int const*) ;

X509_NAME_ENTRY *X509_NAME_ENTRY_create_by_OBJ(X509_NAME_ENTRY **ne,
                                               const ASN1_OBJECT *obj, int type,
                                               const unsigned char *bytes,
                                               int len)
{
    X509_NAME_ENTRY *ret;

    if ((ne == ((void*)0)) || (*ne == ((void*)0))) {
        if ((ret = X509_NAME_ENTRY_new()) == ((void*)0))
            return ((void*)0);
    } else
        ret = *ne;

    if (!X509_NAME_ENTRY_set_object(ret, obj))
        goto err;
    if (!X509_NAME_ENTRY_set_data(ret, type, bytes, len))
        goto err;

    if ((ne != ((void*)0)) && (*ne == ((void*)0)))
        *ne = ret;
    return ret;
 err:
    if ((ne == ((void*)0)) || (ret != *ne))
        X509_NAME_ENTRY_free(ret);
    return ((void*)0);
}
