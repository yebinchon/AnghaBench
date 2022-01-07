
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_node {TYPE_1__* next; } ;
struct TYPE_2__ {scalar_t__ tok; } ;


 scalar_t__ MDOC_Fa ;
 int md_word (char*) ;

__attribute__((used)) static void
md_post_Fa(struct roff_node *n)
{
 if (n->next != ((void*)0) && n->next->tok == MDOC_Fa)
  md_word(",");
}
