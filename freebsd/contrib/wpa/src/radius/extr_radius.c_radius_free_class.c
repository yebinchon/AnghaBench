
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radius_class_data {size_t count; TYPE_1__* attr; } ;
struct TYPE_2__ {struct TYPE_2__* data; } ;


 int os_free (TYPE_1__*) ;

void radius_free_class(struct radius_class_data *c)
{
 size_t i;
 if (c == ((void*)0))
  return;
 for (i = 0; i < c->count; i++)
  os_free(c->attr[i].data);
 os_free(c->attr);
 c->attr = ((void*)0);
 c->count = 0;
}
