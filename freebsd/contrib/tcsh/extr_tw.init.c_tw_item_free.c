
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tw_item ;
 int tw_str_free (int *) ;

void
tw_item_free(void)
{
    tw_str_free(&tw_item);
}
