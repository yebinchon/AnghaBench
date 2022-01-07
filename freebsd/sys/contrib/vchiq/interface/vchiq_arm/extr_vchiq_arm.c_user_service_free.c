
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int remove_event; int insert_event; } ;
typedef TYPE_1__ USER_SERVICE_T ;


 int _sema_destroy (int *) ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static void
user_service_free(void *userdata)
{
 USER_SERVICE_T *user_service = userdata;

 _sema_destroy(&user_service->insert_event);
 _sema_destroy(&user_service->remove_event);

 kfree(user_service);
}
