
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void (* pgin ) (void*,pgno_t,void*) ;void (* pgout ) (void*,pgno_t,void*) ;void* pgcookie; } ;
typedef TYPE_1__ MPOOL ;



void
mpool_filter(MPOOL *mp, void (*pgin) (void *, pgno_t, void *),
    void (*pgout) (void *, pgno_t, void *), void *pgcookie)
{
 mp->pgin = pgin;
 mp->pgout = pgout;
 mp->pgcookie = pgcookie;
}
