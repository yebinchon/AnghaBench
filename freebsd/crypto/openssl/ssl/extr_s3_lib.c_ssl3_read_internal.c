
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* s3; TYPE_1__* method; } ;
struct TYPE_10__ {int in_read_app_data; scalar_t__ renegotiate; } ;
struct TYPE_9__ {int (* ssl_read_bytes ) (TYPE_3__*,int ,int *,void*,size_t,int,size_t*) ;} ;
typedef TYPE_3__ SSL ;


 int SSL3_RT_APPLICATION_DATA ;
 int clear_sys_error () ;
 int ossl_statem_set_in_handshake (TYPE_3__*,int) ;
 int ssl3_renegotiate_check (TYPE_3__*,int ) ;
 int stub1 (TYPE_3__*,int ,int *,void*,size_t,int,size_t*) ;
 int stub2 (TYPE_3__*,int ,int *,void*,size_t,int,size_t*) ;

__attribute__((used)) static int ssl3_read_internal(SSL *s, void *buf, size_t len, int peek,
                              size_t *readbytes)
{
    int ret;

    clear_sys_error();
    if (s->s3->renegotiate)
        ssl3_renegotiate_check(s, 0);
    s->s3->in_read_app_data = 1;
    ret =
        s->method->ssl_read_bytes(s, SSL3_RT_APPLICATION_DATA, ((void*)0), buf, len,
                                  peek, readbytes);
    if ((ret == -1) && (s->s3->in_read_app_data == 2)) {







        ossl_statem_set_in_handshake(s, 1);
        ret =
            s->method->ssl_read_bytes(s, SSL3_RT_APPLICATION_DATA, ((void*)0), buf,
                                      len, peek, readbytes);
        ossl_statem_set_in_handshake(s, 0);
    } else
        s->s3->in_read_app_data = 0;

    return ret;
}
