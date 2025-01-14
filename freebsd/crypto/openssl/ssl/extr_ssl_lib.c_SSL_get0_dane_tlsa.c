
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int mdpth; TYPE_1__* mtlsa; } ;
struct TYPE_8__ {scalar_t__ verify_result; TYPE_2__ dane; } ;
struct TYPE_6__ {unsigned char* data; size_t dlen; int mtype; int selector; int usage; } ;
typedef TYPE_2__ SSL_DANE ;
typedef TYPE_3__ SSL ;


 int DANETLS_ENABLED (TYPE_2__*) ;
 scalar_t__ X509_V_OK ;

int SSL_get0_dane_tlsa(SSL *s, uint8_t *usage, uint8_t *selector,
                       uint8_t *mtype, unsigned const char **data, size_t *dlen)
{
    SSL_DANE *dane = &s->dane;

    if (!DANETLS_ENABLED(dane) || s->verify_result != X509_V_OK)
        return -1;
    if (dane->mtlsa) {
        if (usage)
            *usage = dane->mtlsa->usage;
        if (selector)
            *selector = dane->mtlsa->selector;
        if (mtype)
            *mtype = dane->mtlsa->mtype;
        if (data)
            *data = dane->mtlsa->data;
        if (dlen)
            *dlen = dane->mtlsa->dlen;
    }
    return dane->mdpth;
}
