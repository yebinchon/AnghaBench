
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE_CLEANUP_ITEM ;
typedef int ENGINE_CLEANUP_CB ;


 int OPENSSL_free (int *) ;
 int cleanup_stack ;
 int int_cleanup_check (int) ;
 int * int_cleanup_item (int *) ;
 scalar_t__ sk_ENGINE_CLEANUP_ITEM_push (int ,int *) ;

void engine_cleanup_add_last(ENGINE_CLEANUP_CB *cb)
{
    ENGINE_CLEANUP_ITEM *item;
    if (!int_cleanup_check(1))
        return;
    item = int_cleanup_item(cb);
    if (item != ((void*)0)) {
        if (sk_ENGINE_CLEANUP_ITEM_push(cleanup_stack, item) <= 0)
            OPENSSL_free(item);
    }
}
