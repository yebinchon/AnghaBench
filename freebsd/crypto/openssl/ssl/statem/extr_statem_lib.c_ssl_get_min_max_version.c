
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int version; TYPE_3__* (* cmeth ) () ;} ;
typedef TYPE_2__ version_info ;
struct TYPE_14__ {int version; TYPE_1__* method; } ;
struct TYPE_13__ {int version; } ;
struct TYPE_11__ {int version; } ;
typedef TYPE_3__ SSL_METHOD ;
typedef TYPE_4__ SSL ;



 int ERR_R_INTERNAL_ERROR ;
 int SSL_R_NO_PROTOCOLS_AVAILABLE ;

 TYPE_2__* dtls_version_table ;
 int ossl_assert (int ) ;
 scalar_t__ ssl_method_error (TYPE_4__ const*,TYPE_3__ const*) ;
 TYPE_3__* stub1 () ;
 TYPE_2__* tls_version_table ;

int ssl_get_min_max_version(const SSL *s, int *min_version, int *max_version,
                            int *real_max)
{
    int version, tmp_real_max;
    int hole;
    const SSL_METHOD *single = ((void*)0);
    const SSL_METHOD *method;
    const version_info *table;
    const version_info *vent;

    switch (s->method->version) {
    default:







        *min_version = *max_version = s->version;




        if (!ossl_assert(real_max == ((void*)0)))
            return ERR_R_INTERNAL_ERROR;
        return 0;
    case 128:
        table = tls_version_table;
        break;
    case 129:
        table = dtls_version_table;
        break;
    }
    *min_version = version = 0;
    hole = 1;
    if (real_max != ((void*)0))
        *real_max = 0;
    tmp_real_max = 0;
    for (vent = table; vent->version != 0; ++vent) {




        if (vent->cmeth == ((void*)0)) {
            hole = 1;
            tmp_real_max = 0;
            continue;
        }
        method = vent->cmeth();

        if (hole == 1 && tmp_real_max == 0)
            tmp_real_max = vent->version;

        if (ssl_method_error(s, method) != 0) {
            hole = 1;
        } else if (!hole) {
            single = ((void*)0);
            *min_version = method->version;
        } else {
            if (real_max != ((void*)0) && tmp_real_max != 0)
                *real_max = tmp_real_max;
            version = (single = method)->version;
            *min_version = version;
            hole = 0;
        }
    }

    *max_version = version;


    if (version == 0)
        return SSL_R_NO_PROTOCOLS_AVAILABLE;

    return 0;
}
