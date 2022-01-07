
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abd_t ;


 int abd_cmp_cb ;
 int abd_iterate_func2 (int *,int *,int ,int ,size_t,int ,int *) ;

int
abd_cmp(abd_t *dabd, abd_t *sabd, size_t size)
{
 return (abd_iterate_func2(dabd, sabd, 0, 0, size, abd_cmp_cb, ((void*)0)));
}
