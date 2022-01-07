
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t tlist; size_t nlist; size_t tbuff; size_t nbuff; int * buff; int ** list; } ;
typedef TYPE_1__ stringlist_t ;
typedef int Char ;


 scalar_t__ TW_INCR ;
 int disabled_cleanup (int *) ;
 int pintr_disabled ;
 void* xrealloc (int *,int) ;

__attribute__((used)) static Char *
tw_str_add(stringlist_t *sl, size_t len)
{
    Char *ptr;

    if (sl->tlist <= sl->nlist) {
 pintr_disabled++;
 sl->tlist += TW_INCR;
 sl->list = xrealloc(sl->list, sl->tlist * sizeof(Char *));
 disabled_cleanup(&pintr_disabled);
    }
    if (sl->tbuff <= sl->nbuff + len) {
 size_t i;

 ptr = sl->buff;
 pintr_disabled++;
 sl->tbuff += TW_INCR + len;
 sl->buff = xrealloc(sl->buff, sl->tbuff * sizeof(Char));

 if (ptr != ((void*)0) && ptr != sl->buff) {
     for (i = 0; i < sl->nlist; i++)
  sl->list[i] = sl->buff + (sl->list[i] - ptr);
 }
 disabled_cleanup(&pintr_disabled);
    }
    ptr = sl->list[sl->nlist++] = &sl->buff[sl->nbuff];
    sl->nbuff += len;
    return ptr;
}
