
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * hostname; } ;
struct TYPE_5__ {TYPE_1__ ext; } ;
typedef TYPE_2__ SSL_SESSION ;


 int OPENSSL_free (int *) ;
 int * OPENSSL_strdup (char const*) ;

int SSL_SESSION_set1_hostname(SSL_SESSION *s, const char *hostname)
{
    OPENSSL_free(s->ext.hostname);
    if (hostname == ((void*)0)) {
        s->ext.hostname = ((void*)0);
        return 1;
    }
    s->ext.hostname = OPENSSL_strdup(hostname);

    return s->ext.hostname != ((void*)0);
}
