
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dnup_node {TYPE_1__* sw; } ;
struct TYPE_2__ {int * priv; } ;


 int free (struct dnup_node*) ;

__attribute__((used)) static void delete_dnup_node(struct dnup_node *u)
{
 u->sw->priv = ((void*)0);
 free(u);
}
