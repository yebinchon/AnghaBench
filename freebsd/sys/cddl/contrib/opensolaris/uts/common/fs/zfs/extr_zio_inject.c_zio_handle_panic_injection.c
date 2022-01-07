
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int spa_t ;
struct TYPE_6__ {scalar_t__ zi_type; int zi_func; } ;
struct TYPE_7__ {TYPE_1__ zi_record; int * zi_spa; } ;
typedef TYPE_2__ inject_handler_t ;


 int RW_READER ;
 int inject_handlers ;
 int inject_lock ;
 TYPE_2__* list_head (int *) ;
 TYPE_2__* list_next (int *,TYPE_2__*) ;
 int panic (char*,char*) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 scalar_t__ strcmp (char*,int ) ;

void
zio_handle_panic_injection(spa_t *spa, char *tag, uint64_t type)
{
 inject_handler_t *handler;

 rw_enter(&inject_lock, RW_READER);

 for (handler = list_head(&inject_handlers); handler != ((void*)0);
     handler = list_next(&inject_handlers, handler)) {

  if (spa != handler->zi_spa)
   continue;

  if (handler->zi_record.zi_type == type &&
      strcmp(tag, handler->zi_record.zi_func) == 0)
   panic("Panic requested in function %s\n", tag);
 }

 rw_exit(&inject_lock);
}
