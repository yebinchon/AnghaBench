
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct roff_node {TYPE_4__* norm; } ;
struct TYPE_8__ {TYPE_3__* Es; } ;
struct TYPE_7__ {TYPE_2__* child; } ;
struct TYPE_6__ {TYPE_1__* next; } ;
struct TYPE_5__ {int string; } ;


 int MD_spc ;
 int md_word (int ) ;
 int outflags ;

__attribute__((used)) static void
md_post_En(struct roff_node *n)
{
 if (n->norm->Es == ((void*)0) ||
     n->norm->Es->child == ((void*)0) ||
     n->norm->Es->child->next == ((void*)0))
  return;

 outflags &= ~MD_spc;
 md_word(n->norm->Es->child->next->string);
}
