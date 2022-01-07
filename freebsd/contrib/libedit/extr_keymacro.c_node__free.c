
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; struct TYPE_4__* sibling; } ;
typedef TYPE_1__ keymacro_node_t ;


 int el_free (TYPE_1__*) ;

__attribute__((used)) static void
node__free(keymacro_node_t *k)
{
 if (k == ((void*)0))
  return;
 node__free(k->sibling);
 node__free(k->next);
 el_free(k);
}
