
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_NAME_ENTRY ;
typedef int ASN1_OBJECT ;


 int ASN1_OBJECT_free (int *) ;
 int * OBJ_nid2obj (int) ;
 int X509_F_X509_NAME_ENTRY_CREATE_BY_NID ;
 int * X509_NAME_ENTRY_create_by_OBJ (int **,int *,int,unsigned char const*,int) ;
 int X509_R_UNKNOWN_NID ;
 int X509err (int ,int ) ;

X509_NAME_ENTRY *X509_NAME_ENTRY_create_by_NID(X509_NAME_ENTRY **ne, int nid,
                                               int type,
                                               const unsigned char *bytes,
                                               int len)
{
    ASN1_OBJECT *obj;
    X509_NAME_ENTRY *nentry;

    obj = OBJ_nid2obj(nid);
    if (obj == ((void*)0)) {
        X509err(X509_F_X509_NAME_ENTRY_CREATE_BY_NID, X509_R_UNKNOWN_NID);
        return ((void*)0);
    }
    nentry = X509_NAME_ENTRY_create_by_OBJ(ne, obj, type, bytes, len);
    ASN1_OBJECT_free(obj);
    return nentry;
}
