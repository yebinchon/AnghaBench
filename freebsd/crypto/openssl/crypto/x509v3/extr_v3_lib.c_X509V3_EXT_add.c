
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509V3_EXT_METHOD ;


 int ERR_R_MALLOC_FAILURE ;
 int X509V3_F_X509V3_EXT_ADD ;
 int X509V3err (int ,int ) ;
 int ext_cmp ;
 int * ext_list ;
 int * sk_X509V3_EXT_METHOD_new (int ) ;
 int sk_X509V3_EXT_METHOD_push (int *,int *) ;

int X509V3_EXT_add(X509V3_EXT_METHOD *ext)
{
    if (ext_list == ((void*)0)
        && (ext_list = sk_X509V3_EXT_METHOD_new(ext_cmp)) == ((void*)0)) {
        X509V3err(X509V3_F_X509V3_EXT_ADD, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    if (!sk_X509V3_EXT_METHOD_push(ext_list, ext)) {
        X509V3err(X509V3_F_X509V3_EXT_ADD, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    return 1;
}
