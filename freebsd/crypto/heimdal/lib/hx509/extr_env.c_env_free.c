
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* hx509_env ;
struct TYPE_5__ {TYPE_2__* list; TYPE_2__* string; } ;
struct TYPE_6__ {scalar_t__ type; struct TYPE_6__* name; TYPE_1__ u; struct TYPE_6__* next; } ;


 scalar_t__ env_list ;
 scalar_t__ env_string ;
 int free (TYPE_2__*) ;

__attribute__((used)) static void
env_free(hx509_env b)
{
    while(b) {
 hx509_env next = b->next;

 if (b->type == env_string)
     free(b->u.string);
 else if (b->type == env_list)
     env_free(b->u.list);

 free(b->name);
 free(b);
 b = next;
    }
}
