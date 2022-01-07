
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int krb5_context ;
struct TYPE_5__ {TYPE_2__* list; TYPE_2__* string; } ;
struct TYPE_6__ {scalar_t__ type; struct TYPE_6__* next; TYPE_1__ u; struct TYPE_6__* name; } ;
typedef TYPE_2__ krb5_config_binding ;


 int free (TYPE_2__*) ;
 int krb5_abortx (int ,char*,scalar_t__) ;
 scalar_t__ krb5_config_list ;
 scalar_t__ krb5_config_string ;

__attribute__((used)) static void
free_binding (krb5_context context, krb5_config_binding *b)
{
    krb5_config_binding *next_b;

    while (b) {
 free (b->name);
 if (b->type == krb5_config_string)
     free (b->u.string);
 else if (b->type == krb5_config_list)
     free_binding (context, b->u.list);
 else
     krb5_abortx(context, "unknown binding type (%d) in free_binding",
   b->type);
 next_b = b->next;
 free (b);
 b = next_b;
    }
}
