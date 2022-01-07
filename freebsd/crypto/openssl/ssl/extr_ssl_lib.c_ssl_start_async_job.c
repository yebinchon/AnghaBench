
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ssl_async_args {int dummy; } ;
struct TYPE_3__ {void* rwstate; int * job; int * waitctx; } ;
typedef TYPE_1__ SSL ;






 int * ASYNC_WAIT_CTX_new () ;
 int ASYNC_start_job (int **,int *,int*,int (*) (void*),struct ssl_async_args*,int) ;
 int ERR_R_INTERNAL_ERROR ;
 void* SSL_ASYNC_NO_JOBS ;
 void* SSL_ASYNC_PAUSED ;
 int SSL_F_SSL_START_ASYNC_JOB ;
 void* SSL_NOTHING ;
 int SSL_R_FAILED_TO_INIT_ASYNC ;
 int SSLerr (int ,int ) ;

__attribute__((used)) static int ssl_start_async_job(SSL *s, struct ssl_async_args *args,
                               int (*func) (void *))
{
    int ret;
    if (s->waitctx == ((void*)0)) {
        s->waitctx = ASYNC_WAIT_CTX_new();
        if (s->waitctx == ((void*)0))
            return -1;
    }
    switch (ASYNC_start_job(&s->job, s->waitctx, &ret, func, args,
                            sizeof(struct ssl_async_args))) {
    case 131:
        s->rwstate = SSL_NOTHING;
        SSLerr(SSL_F_SSL_START_ASYNC_JOB, SSL_R_FAILED_TO_INIT_ASYNC);
        return -1;
    case 128:
        s->rwstate = SSL_ASYNC_PAUSED;
        return -1;
    case 129:
        s->rwstate = SSL_ASYNC_NO_JOBS;
        return -1;
    case 130:
        s->job = ((void*)0);
        return ret;
    default:
        s->rwstate = SSL_NOTHING;
        SSLerr(SSL_F_SSL_START_ASYNC_JOB, ERR_R_INTERNAL_ERROR);

        return -1;
    }
}
