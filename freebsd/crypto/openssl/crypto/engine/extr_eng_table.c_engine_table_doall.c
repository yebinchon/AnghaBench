
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int engine_table_doall_cb ;
struct TYPE_6__ {void* arg; int * cb; } ;
struct TYPE_5__ {int piles; } ;
typedef TYPE_1__ ENGINE_TABLE ;
typedef TYPE_2__ ENGINE_PILE_DOALL ;


 int int_dall ;
 int lh_ENGINE_PILE_doall_ENGINE_PILE_DOALL (int *,int ,TYPE_2__*) ;

void engine_table_doall(ENGINE_TABLE *table, engine_table_doall_cb *cb,
                        void *arg)
{
    ENGINE_PILE_DOALL dall;
    dall.cb = cb;
    dall.arg = arg;
    if (table)
        lh_ENGINE_PILE_doall_ENGINE_PILE_DOALL(&table->piles, int_dall, &dall);
}
