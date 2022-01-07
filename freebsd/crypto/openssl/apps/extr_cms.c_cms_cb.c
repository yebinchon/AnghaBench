
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE_CTX ;


 int X509_STORE_CTX_get_error (int *) ;
 int X509_V_ERR_NO_EXPLICIT_POLICY ;
 int X509_V_OK ;
 int policies_print (int *) ;
 int verify_err ;

__attribute__((used)) static int cms_cb(int ok, X509_STORE_CTX *ctx)
{
    int error;

    error = X509_STORE_CTX_get_error(ctx);

    verify_err = error;

    if ((error != X509_V_ERR_NO_EXPLICIT_POLICY)
        && ((error != X509_V_OK) || (ok != 2)))
        return ok;

    policies_print(ctx);

    return ok;

}
