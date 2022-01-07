
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sfs_node_t ;


 int M_SFSNODES ;
 int free (int *,int ) ;

__attribute__((used)) static void
sfs_destroy_node(sfs_node_t *node)
{
 free(node, M_SFSNODES);
}
