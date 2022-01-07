
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int name_flags; int namelen; int option_value; int name; } ;
typedef TYPE_1__ ssl_flag_tbl ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_2__ SSL_CONF_CTX ;


 int SSL_TFLAG_BOTH ;
 int ssl_set_option (TYPE_2__*,int,int ,int) ;
 scalar_t__ strcmp (int ,char const*) ;
 scalar_t__ strncasecmp (int ,char const*,int) ;

__attribute__((used)) static int ssl_match_option(SSL_CONF_CTX *cctx, const ssl_flag_tbl *tbl,
                            const char *name, int namelen, int onoff)
{

    if (!(cctx->flags & tbl->name_flags & SSL_TFLAG_BOTH))
        return 0;
    if (namelen == -1) {
        if (strcmp(tbl->name, name))
            return 0;
    } else if (tbl->namelen != namelen || strncasecmp(tbl->name, name, namelen))
        return 0;
    ssl_set_option(cctx, tbl->name_flags, tbl->option_value, onoff);
    return 1;
}
