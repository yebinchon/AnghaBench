
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_ATTRIBUTE ;
typedef int ASN1_OBJECT ;


 int ASN1_OBJECT_free (int *) ;
 int ERR_add_error_data (int,char*,char const*) ;
 int * OBJ_txt2obj (char const*,int ) ;
 int * X509_ATTRIBUTE_create_by_OBJ (int **,int *,int,unsigned char const*,int) ;
 int X509_F_X509_ATTRIBUTE_CREATE_BY_TXT ;
 int X509_R_INVALID_FIELD_NAME ;
 int X509err (int ,int ) ;

X509_ATTRIBUTE *X509_ATTRIBUTE_create_by_txt(X509_ATTRIBUTE **attr,
                                             const char *atrname, int type,
                                             const unsigned char *bytes,
                                             int len)
{
    ASN1_OBJECT *obj;
    X509_ATTRIBUTE *nattr;

    obj = OBJ_txt2obj(atrname, 0);
    if (obj == ((void*)0)) {
        X509err(X509_F_X509_ATTRIBUTE_CREATE_BY_TXT,
                X509_R_INVALID_FIELD_NAME);
        ERR_add_error_data(2, "name=", atrname);
        return ((void*)0);
    }
    nattr = X509_ATTRIBUTE_create_by_OBJ(attr, obj, type, bytes, len);
    ASN1_OBJECT_free(obj);
    return nattr;
}
