
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; scalar_t__ ssl; scalar_t__ ctx; } ;
typedef TYPE_1__ SSL_CONF_CTX ;
typedef int EC_KEY ;


 int EC_KEY_free (int *) ;
 int * EC_KEY_new_by_curve_name (int) ;
 int EC_curve_nist2nid (char const*) ;
 int NID_undef ;
 int OBJ_sn2nid (char const*) ;
 int SSL_CONF_FLAG_CMDLINE ;
 int SSL_CONF_FLAG_FILE ;
 int SSL_CTX_set_tmp_ecdh (scalar_t__,int *) ;
 int SSL_set_tmp_ecdh (scalar_t__,int *) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int cmd_ECDHParameters(SSL_CONF_CTX *cctx, const char *value)
{
    int rv = 1;
    EC_KEY *ecdh;
    int nid;


    if ((cctx->flags & SSL_CONF_FLAG_FILE)
            && (strcasecmp(value, "+automatic") == 0
                || strcasecmp(value, "automatic") == 0))
        return 1;
    if ((cctx->flags & SSL_CONF_FLAG_CMDLINE) &&
        strcmp(value, "auto") == 0)
        return 1;

    nid = EC_curve_nist2nid(value);
    if (nid == NID_undef)
        nid = OBJ_sn2nid(value);
    if (nid == 0)
        return 0;
    ecdh = EC_KEY_new_by_curve_name(nid);
    if (!ecdh)
        return 0;
    if (cctx->ctx)
        rv = SSL_CTX_set_tmp_ecdh(cctx->ctx, ecdh);
    else if (cctx->ssl)
        rv = SSL_set_tmp_ecdh(cctx->ssl, ecdh);
    EC_KEY_free(ecdh);

    return rv > 0;
}
