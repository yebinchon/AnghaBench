
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t ticket_appdata_len; void* ticket_appdata; } ;
typedef TYPE_1__ SSL_SESSION ;



int SSL_SESSION_get0_ticket_appdata(SSL_SESSION *ss, void **data, size_t *len)
{
    *data = ss->ticket_appdata;
    *len = ss->ticket_appdata_len;
    return 1;
}
