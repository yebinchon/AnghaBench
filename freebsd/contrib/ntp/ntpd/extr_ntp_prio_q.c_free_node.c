
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node ;


 int free (int *) ;

void free_node(
 void *my_node
 )
{
 node *old_node = my_node;

 free(old_node - 1);
}
