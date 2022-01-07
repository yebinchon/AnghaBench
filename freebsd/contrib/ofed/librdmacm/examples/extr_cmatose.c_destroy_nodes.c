
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * nodes; } ;


 int connections ;
 int destroy_node (int *) ;
 int free (int *) ;
 TYPE_1__ test ;

__attribute__((used)) static void destroy_nodes(void)
{
 int i;

 for (i = 0; i < connections; i++)
  destroy_node(&test.nodes[i]);
 free(test.nodes);
}
