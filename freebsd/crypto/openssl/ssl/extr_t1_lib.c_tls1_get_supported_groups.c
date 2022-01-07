
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {size_t supportedgroups_len; int * supportedgroups; } ;
struct TYPE_6__ {TYPE_1__ ext; } ;
typedef TYPE_2__ SSL ;


 size_t OSSL_NELEM (int *) ;



 int * eccurves_default ;
 int * suiteb_curves ;
 int tls1_suiteb (TYPE_2__*) ;

void tls1_get_supported_groups(SSL *s, const uint16_t **pgroups,
                               size_t *pgroupslen)
{


    switch (tls1_suiteb(s)) {
    case 130:
        *pgroups = suiteb_curves;
        *pgroupslen = OSSL_NELEM(suiteb_curves);
        break;

    case 129:
        *pgroups = suiteb_curves;
        *pgroupslen = 1;
        break;

    case 128:
        *pgroups = suiteb_curves + 1;
        *pgroupslen = 1;
        break;

    default:
        if (s->ext.supportedgroups == ((void*)0)) {
            *pgroups = eccurves_default;
            *pgroupslen = OSSL_NELEM(eccurves_default);
        } else {
            *pgroups = s->ext.supportedgroups;
            *pgroupslen = s->ext.supportedgroups_len;
        }
        break;
    }
}
