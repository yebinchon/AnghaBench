
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int html_reset_internal (void*) ;
 int id_unique ;
 int mandoc_ohash_init (int *,int,int ) ;

void
html_reset(void *p)
{
 html_reset_internal(p);
 mandoc_ohash_init(&id_unique, 4, 0);
}
