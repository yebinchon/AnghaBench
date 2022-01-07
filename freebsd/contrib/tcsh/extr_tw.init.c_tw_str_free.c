
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nbuff; scalar_t__ tbuff; int * buff; scalar_t__ nlist; scalar_t__ tlist; int * list; } ;
typedef TYPE_1__ stringlist_t ;


 int disabled_cleanup (int *) ;
 int pintr_disabled ;
 int xfree (int *) ;

__attribute__((used)) static void
tw_str_free(stringlist_t *sl)
{
    pintr_disabled++;
    if (sl->list) {
 xfree(sl->list);
 sl->list = ((void*)0);
 sl->tlist = sl->nlist = 0;
    }
    if (sl->buff) {
 xfree(sl->buff);
 sl->buff = ((void*)0);
 sl->tbuff = sl->nbuff = 0;
    }
    disabled_cleanup(&pintr_disabled);
}
