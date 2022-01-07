
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ method_data; } ;
typedef TYPE_1__ X509_LOOKUP ;
typedef int BY_DIR ;


 long X509_FILETYPE_DEFAULT ;
 int X509_FILETYPE_PEM ;
 int X509_F_DIR_CTRL ;

 int X509_R_LOADING_CERT_DIR ;
 char const* X509_get_default_cert_dir () ;
 int X509_get_default_cert_dir_env () ;
 int X509err (int ,int ) ;
 int add_cert_dir (int *,char const*,int) ;
 char* ossl_safe_getenv (int ) ;

__attribute__((used)) static int dir_ctrl(X509_LOOKUP *ctx, int cmd, const char *argp, long argl,
                    char **retp)
{
    int ret = 0;
    BY_DIR *ld = (BY_DIR *)ctx->method_data;

    switch (cmd) {
    case 128:
        if (argl == X509_FILETYPE_DEFAULT) {
            const char *dir = ossl_safe_getenv(X509_get_default_cert_dir_env());

            if (dir)
                ret = add_cert_dir(ld, dir, X509_FILETYPE_PEM);
            else
                ret = add_cert_dir(ld, X509_get_default_cert_dir(),
                                   X509_FILETYPE_PEM);
            if (!ret) {
                X509err(X509_F_DIR_CTRL, X509_R_LOADING_CERT_DIR);
            }
        } else
            ret = add_cert_dir(ld, argp, (int)argl);
        break;
    }
    return ret;
}
