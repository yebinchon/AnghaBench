
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * hostname; } ;
struct TYPE_5__ {TYPE_1__ ext; scalar_t__ servername_done; scalar_t__ server; } ;
typedef TYPE_2__ SSL ;


 int OPENSSL_free (int *) ;

__attribute__((used)) static int init_server_name(SSL *s, unsigned int context)
{
    if (s->server) {
        s->servername_done = 0;

        OPENSSL_free(s->ext.hostname);
        s->ext.hostname = ((void*)0);
    }

    return 1;
}
