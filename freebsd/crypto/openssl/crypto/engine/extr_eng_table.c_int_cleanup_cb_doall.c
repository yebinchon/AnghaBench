
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ funct; int sk; } ;
typedef TYPE_1__ ENGINE_PILE ;


 int OPENSSL_free (TYPE_1__*) ;
 int engine_unlocked_finish (scalar_t__,int ) ;
 int sk_ENGINE_free (int ) ;

__attribute__((used)) static void int_cleanup_cb_doall(ENGINE_PILE *p)
{
    if (!p)
        return;
    sk_ENGINE_free(p->sk);
    if (p->funct)
        engine_unlocked_finish(p->funct, 0);
    OPENSSL_free(p);
}
