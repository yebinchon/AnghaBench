
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct abd_iter {scalar_t__ iter_mapsize; int * iter_mapaddr; scalar_t__ iter_pos; int * iter_abd; } ;
typedef int abd_t ;


 int abd_verify (int *) ;

__attribute__((used)) static void
abd_iter_init(struct abd_iter *aiter, abd_t *abd)
{
 abd_verify(abd);
 aiter->iter_abd = abd;
 aiter->iter_pos = 0;
 aiter->iter_mapaddr = ((void*)0);
 aiter->iter_mapsize = 0;
}
