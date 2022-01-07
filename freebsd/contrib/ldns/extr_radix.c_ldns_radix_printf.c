
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int root; } ;
typedef TYPE_1__ ldns_radix_t ;
typedef int FILE ;


 int fprintf (int *,char*) ;
 int ldns_radix_node_print (int *,int ,int ,int *,int ,int ) ;

void
ldns_radix_printf(FILE* fd, const ldns_radix_t* tree)
{
 if (!fd || !tree) {
  return;
 }
 if (!tree->root) {
  fprintf(fd, "; empty radix tree\n");
  return;
 }
 ldns_radix_node_print(fd, tree->root, 0, ((void*)0), 0, 0);
 return;
}
