
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct updn_node {TYPE_1__* sw; } ;
struct TYPE_2__ {int * priv; } ;


 int free (struct updn_node*) ;

__attribute__((used)) static void delete_updn_node(struct updn_node *u)
{
 u->sw->priv = ((void*)0);
 free(u);
}
