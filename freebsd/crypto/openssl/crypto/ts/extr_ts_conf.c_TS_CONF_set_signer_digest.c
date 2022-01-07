
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TS_RESP_CTX ;
typedef int EVP_MD ;
typedef int CONF ;


 int ENV_SIGNER_DIGEST ;
 int * EVP_get_digestbyname (char const*) ;
 char* NCONF_get_string (int *,char const*,int ) ;
 int TS_RESP_CTX_set_signer_digest (int *,int const*) ;
 int ts_CONF_invalid (char const*,int ) ;
 int ts_CONF_lookup_fail (char const*,int ) ;

int TS_CONF_set_signer_digest(CONF *conf, const char *section,
                              const char *md, TS_RESP_CTX *ctx)
{
    int ret = 0;
    const EVP_MD *sign_md = ((void*)0);
    if (md == ((void*)0))
        md = NCONF_get_string(conf, section, ENV_SIGNER_DIGEST);
    if (md == ((void*)0)) {
        ts_CONF_lookup_fail(section, ENV_SIGNER_DIGEST);
        goto err;
    }
    sign_md = EVP_get_digestbyname(md);
    if (sign_md == ((void*)0)) {
        ts_CONF_invalid(section, ENV_SIGNER_DIGEST);
        goto err;
    }
    if (!TS_RESP_CTX_set_signer_digest(ctx, sign_md))
        goto err;

    ret = 1;
 err:
    return ret;
}
