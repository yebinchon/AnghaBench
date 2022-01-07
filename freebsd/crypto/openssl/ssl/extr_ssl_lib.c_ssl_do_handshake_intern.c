
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ssl_async_args {TYPE_1__* s; } ;
struct TYPE_3__ {int (* handshake_func ) (TYPE_1__*) ;} ;
typedef TYPE_1__ SSL ;


 int stub1 (TYPE_1__*) ;

__attribute__((used)) static int ssl_do_handshake_intern(void *vargs)
{
    struct ssl_async_args *args;
    SSL *s;

    args = (struct ssl_async_args *)vargs;
    s = args->s;

    return s->handshake_func(s);
}
