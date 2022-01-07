
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ck_array {TYPE_2__* active; TYPE_2__* transaction; TYPE_1__* allocator; } ;
struct _ck_array {int dummy; } ;
struct TYPE_5__ {int length; } ;
struct TYPE_4__ {int (* free ) (TYPE_2__*,int,int) ;} ;


 int stub1 (TYPE_2__*,int,int) ;
 int stub2 (TYPE_2__*,int,int) ;

void
ck_array_deinit(struct ck_array *array, bool defer)
{

 array->allocator->free(array->active,
     sizeof(struct _ck_array) + sizeof(void *) * array->active->length, defer);

 if (array->transaction != ((void*)0)) {
  array->allocator->free(array->transaction,
      sizeof(struct _ck_array) + sizeof(void *) * array->transaction->length, defer);
 }

 array->transaction = array->active = ((void*)0);
 return;
}
