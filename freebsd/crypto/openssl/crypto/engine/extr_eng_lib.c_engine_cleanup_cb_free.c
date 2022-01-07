
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* cb ) () ;} ;
typedef TYPE_1__ ENGINE_CLEANUP_ITEM ;


 int OPENSSL_free (TYPE_1__*) ;
 int stub1 () ;

__attribute__((used)) static void engine_cleanup_cb_free(ENGINE_CLEANUP_ITEM *item)
{
    (*(item->cb)) ();
    OPENSSL_free(item);
}
