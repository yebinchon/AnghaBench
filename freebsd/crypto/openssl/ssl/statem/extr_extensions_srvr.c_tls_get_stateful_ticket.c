
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ticket_expected; } ;
struct TYPE_6__ {TYPE_1__ ext; } ;
typedef int SSL_TICKET_STATUS ;
typedef int SSL_SESSION ;
typedef TYPE_2__ SSL ;
typedef int PACKET ;


 int PACKET_data (int *) ;
 int PACKET_remaining (int *) ;

 int SSL_TICKET_EMPTY ;
 int SSL_TICKET_NO_DECRYPT ;
 int SSL_TICKET_SUCCESS ;
 int * lookup_sess_in_cache (TYPE_2__*,int ,int const) ;

__attribute__((used)) static SSL_TICKET_STATUS tls_get_stateful_ticket(SSL *s, PACKET *tick,
                                                 SSL_SESSION **sess)
{
    SSL_SESSION *tmpsess = ((void*)0);

    s->ext.ticket_expected = 1;

    switch (PACKET_remaining(tick)) {
        case 0:
            return SSL_TICKET_EMPTY;

        case 128:
            break;

        default:
            return SSL_TICKET_NO_DECRYPT;
    }

    tmpsess = lookup_sess_in_cache(s, PACKET_data(tick),
                                   128);

    if (tmpsess == ((void*)0))
        return SSL_TICKET_NO_DECRYPT;

    *sess = tmpsess;
    return SSL_TICKET_SUCCESS;
}
