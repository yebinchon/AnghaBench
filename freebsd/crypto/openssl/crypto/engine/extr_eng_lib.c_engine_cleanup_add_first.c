
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE_CLEANUP_ITEM ;
typedef int ENGINE_CLEANUP_CB ;


 int cleanup_stack ;
 int int_cleanup_check (int) ;
 int * int_cleanup_item (int *) ;
 int sk_ENGINE_CLEANUP_ITEM_insert (int ,int *,int ) ;

void engine_cleanup_add_first(ENGINE_CLEANUP_CB *cb)
{
    ENGINE_CLEANUP_ITEM *item;

    if (!int_cleanup_check(1))
        return;
    item = int_cleanup_item(cb);
    if (item)
        sk_ENGINE_CLEANUP_ITEM_insert(cleanup_stack, item, 0);
}
