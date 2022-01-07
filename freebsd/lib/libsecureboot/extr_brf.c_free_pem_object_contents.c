
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; int name; } ;
typedef TYPE_1__ pem_object ;


 int xfree (int ) ;

void
free_pem_object_contents(pem_object *po)
{
 if (po != ((void*)0)) {
  xfree(po->name);
  xfree(po->data);
 }
}
