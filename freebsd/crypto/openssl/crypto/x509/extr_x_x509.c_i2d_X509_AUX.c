
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509 ;


 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (int) ;
 int X509_F_I2D_X509_AUX ;
 int X509err (int ,int ) ;
 int i2d_x509_aux_internal (int *,unsigned char**) ;

int i2d_X509_AUX(X509 *a, unsigned char **pp)
{
    int length;
    unsigned char *tmp;


    if (pp == ((void*)0) || *pp != ((void*)0))
        return i2d_x509_aux_internal(a, pp);


    if ((length = i2d_x509_aux_internal(a, ((void*)0))) <= 0)
        return length;


    *pp = tmp = OPENSSL_malloc(length);
    if (tmp == ((void*)0)) {
        X509err(X509_F_I2D_X509_AUX, ERR_R_MALLOC_FAILURE);
        return -1;
    }


    length = i2d_x509_aux_internal(a, &tmp);
    if (length <= 0) {
        OPENSSL_free(*pp);
        *pp = ((void*)0);
    }
    return length;
}
