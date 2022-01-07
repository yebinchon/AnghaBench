
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_17__ {int context; int (* final ) (TYPE_3__*,int,int ) ;} ;
struct TYPE_16__ {int present; } ;
struct TYPE_15__ {TYPE_2__* cert; } ;
struct TYPE_13__ {scalar_t__ meths_count; } ;
struct TYPE_14__ {TYPE_1__ custext; } ;
typedef TYPE_3__ SSL ;
typedef TYPE_4__ RAW_EXTENSION ;
typedef TYPE_5__ EXTENSION_DEFINITION ;


 size_t OSSL_NELEM (TYPE_5__*) ;
 TYPE_5__* ext_defs ;
 int stub1 (TYPE_3__*,int,int ) ;
 int tls_parse_extension (TYPE_3__*,size_t,int,TYPE_4__*,int *,size_t) ;

int tls_parse_all_extensions(SSL *s, int context, RAW_EXTENSION *exts, X509 *x,
                             size_t chainidx, int fin)
{
    size_t i, numexts = OSSL_NELEM(ext_defs);
    const EXTENSION_DEFINITION *thisexd;


    numexts += s->cert->custext.meths_count;


    for (i = 0; i < numexts; i++) {
        if (!tls_parse_extension(s, i, context, exts, x, chainidx)) {

            return 0;
        }
    }

    if (fin) {




        for (i = 0, thisexd = ext_defs; i < OSSL_NELEM(ext_defs);
             i++, thisexd++) {
            if (thisexd->final != ((void*)0) && (thisexd->context & context) != 0
                && !thisexd->final(s, context, exts[i].present)) {

                return 0;
            }
        }
    }

    return 1;
}
