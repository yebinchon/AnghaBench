
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long session_timeout; } ;
typedef TYPE_1__ SSL_CTX ;



long SSL_CTX_set_timeout(SSL_CTX *s, long t)
{
    long l;
    if (s == ((void*)0))
        return 0;
    l = s->session_timeout;
    s->session_timeout = t;
    return l;
}
