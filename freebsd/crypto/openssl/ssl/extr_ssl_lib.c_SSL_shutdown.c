
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int (* func_other ) (TYPE_3__*) ;} ;
struct ssl_async_args {TYPE_2__ f; int type; TYPE_3__* s; } ;
struct TYPE_10__ {int mode; TYPE_1__* method; int * handshake_func; } ;
struct TYPE_8__ {int (* ssl_shutdown ) (TYPE_3__*) ;} ;
typedef TYPE_3__ SSL ;


 int * ASYNC_get_current_job () ;
 int OTHERFUNC ;
 int SSL_F_SSL_SHUTDOWN ;
 int SSL_MODE_ASYNC ;
 int SSL_R_SHUTDOWN_WHILE_IN_INIT ;
 int SSL_R_UNINITIALIZED ;
 int SSL_in_init (TYPE_3__*) ;
 int SSLerr (int ,int ) ;
 int ssl_io_intern ;
 int ssl_start_async_job (TYPE_3__*,struct ssl_async_args*,int ) ;
 int stub1 (TYPE_3__*) ;

int SSL_shutdown(SSL *s)
{







    if (s->handshake_func == ((void*)0)) {
        SSLerr(SSL_F_SSL_SHUTDOWN, SSL_R_UNINITIALIZED);
        return -1;
    }

    if (!SSL_in_init(s)) {
        if ((s->mode & SSL_MODE_ASYNC) && ASYNC_get_current_job() == ((void*)0)) {
            struct ssl_async_args args;

            args.s = s;
            args.type = OTHERFUNC;
            args.f.func_other = s->method->ssl_shutdown;

            return ssl_start_async_job(s, &args, ssl_io_intern);
        } else {
            return s->method->ssl_shutdown(s);
        }
    } else {
        SSLerr(SSL_F_SSL_SHUTDOWN, SSL_R_SHUTDOWN_WHILE_IN_INIT);
        return -1;
    }
}
