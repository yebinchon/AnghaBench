
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * funct; scalar_t__ uptodate; int sk; } ;
typedef TYPE_1__ ENGINE_PILE ;
typedef int ENGINE ;


 int engine_unlocked_finish (int *,int ) ;
 int sk_ENGINE_delete (int ,int) ;
 int sk_ENGINE_find (int ,int *) ;

__attribute__((used)) static void int_unregister_cb(ENGINE_PILE *pile, ENGINE *e)
{
    int n;

    while ((n = sk_ENGINE_find(pile->sk, e)) >= 0) {
        (void)sk_ENGINE_delete(pile->sk, n);
        pile->uptodate = 0;
    }
    if (pile->funct == e) {
        engine_unlocked_finish(e, 0);
        pile->funct = ((void*)0);
    }
}
