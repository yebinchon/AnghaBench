
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_NAME_ENTRY ;
typedef int X509_NAME ;
typedef int ASN1_OBJECT ;


 int * X509_NAME_ENTRY_create_by_OBJ (int *,int const*,int,unsigned char const*,int) ;
 int X509_NAME_ENTRY_free (int *) ;
 int X509_NAME_add_entry (int *,int *,int,int) ;

int X509_NAME_add_entry_by_OBJ(X509_NAME *name, const ASN1_OBJECT *obj, int type,
                               const unsigned char *bytes, int len, int loc,
                               int set)
{
    X509_NAME_ENTRY *ne;
    int ret;

    ne = X509_NAME_ENTRY_create_by_OBJ(((void*)0), obj, type, bytes, len);
    if (!ne)
        return 0;
    ret = X509_NAME_add_entry(name, ne, loc, set);
    X509_NAME_ENTRY_free(ne);
    return ret;
}
