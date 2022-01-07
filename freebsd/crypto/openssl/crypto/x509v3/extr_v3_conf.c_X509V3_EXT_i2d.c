
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_EXTENSION ;
typedef int X509V3_EXT_METHOD ;


 int * X509V3_EXT_get_nid (int) ;
 int X509V3_F_X509V3_EXT_I2D ;
 int X509V3_R_UNKNOWN_EXTENSION ;
 int X509V3err (int ,int ) ;
 int * do_ext_i2d (int const*,int,int,void*) ;

X509_EXTENSION *X509V3_EXT_i2d(int ext_nid, int crit, void *ext_struc)
{
    const X509V3_EXT_METHOD *method;

    if ((method = X509V3_EXT_get_nid(ext_nid)) == ((void*)0)) {
        X509V3err(X509V3_F_X509V3_EXT_I2D, X509V3_R_UNKNOWN_EXTENSION);
        return ((void*)0);
    }
    return do_ext_i2d(method, ext_nid, crit, ext_struc);
}
