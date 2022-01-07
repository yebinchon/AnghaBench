
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* s; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ value; } ;
typedef TYPE_2__ attr_val ;


 scalar_t__ T_String ;
 int free (TYPE_2__*) ;

void
destroy_attr_val(
 attr_val * av
 )
{
 if (av) {
  if (T_String == av->type)
   free(av->value.s);
  free(av);
 }
}
