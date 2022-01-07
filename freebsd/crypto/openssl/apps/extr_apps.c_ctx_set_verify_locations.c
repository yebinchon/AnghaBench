
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int SSL_CTX_load_verify_locations (int *,char const*,char const*) ;
 scalar_t__ SSL_CTX_set_default_verify_dir (int *) ;
 scalar_t__ SSL_CTX_set_default_verify_file (int *) ;

int ctx_set_verify_locations(SSL_CTX *ctx, const char *CAfile,
                             const char *CApath, int noCAfile, int noCApath)
{
    if (CAfile == ((void*)0) && CApath == ((void*)0)) {
        if (!noCAfile && SSL_CTX_set_default_verify_file(ctx) <= 0)
            return 0;
        if (!noCApath && SSL_CTX_set_default_verify_dir(ctx) <= 0)
            return 0;

        return 1;
    }
    return SSL_CTX_load_verify_locations(ctx, CAfile, CApath);
}
