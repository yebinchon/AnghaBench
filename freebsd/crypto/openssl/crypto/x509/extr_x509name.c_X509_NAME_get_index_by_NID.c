
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_NAME ;
typedef int ASN1_OBJECT ;


 int * OBJ_nid2obj (int) ;
 int X509_NAME_get_index_by_OBJ (int *,int *,int) ;

int X509_NAME_get_index_by_NID(X509_NAME *name, int nid, int lastpos)
{
    ASN1_OBJECT *obj;

    obj = OBJ_nid2obj(nid);
    if (obj == ((void*)0))
        return -2;
    return X509_NAME_get_index_by_OBJ(name, obj, lastpos);
}
