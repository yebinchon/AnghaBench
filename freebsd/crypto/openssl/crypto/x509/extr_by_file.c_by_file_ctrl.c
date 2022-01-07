
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_LOOKUP ;


 long X509_FILETYPE_DEFAULT ;
 long X509_FILETYPE_PEM ;
 int X509_F_BY_FILE_CTRL ;

 int X509_R_LOADING_DEFAULTS ;
 char const* X509_get_default_cert_file () ;
 int X509_get_default_cert_file_env () ;
 int X509_load_cert_crl_file (int *,char const*,long) ;
 int X509_load_cert_file (int *,char const*,int) ;
 int X509err (int ,int ) ;
 char* ossl_safe_getenv (int ) ;

__attribute__((used)) static int by_file_ctrl(X509_LOOKUP *ctx, int cmd, const char *argp,
                        long argl, char **ret)
{
    int ok = 0;
    const char *file;

    switch (cmd) {
    case 128:
        if (argl == X509_FILETYPE_DEFAULT) {
            file = ossl_safe_getenv(X509_get_default_cert_file_env());
            if (file)
                ok = (X509_load_cert_crl_file(ctx, file,
                                              X509_FILETYPE_PEM) != 0);

            else
                ok = (X509_load_cert_crl_file
                      (ctx, X509_get_default_cert_file(),
                       X509_FILETYPE_PEM) != 0);

            if (!ok) {
                X509err(X509_F_BY_FILE_CTRL, X509_R_LOADING_DEFAULTS);
            }
        } else {
            if (argl == X509_FILETYPE_PEM)
                ok = (X509_load_cert_crl_file(ctx, argp,
                                              X509_FILETYPE_PEM) != 0);
            else
                ok = (X509_load_cert_file(ctx, argp, (int)argl) != 0);
        }
        break;
    }
    return ok;
}
