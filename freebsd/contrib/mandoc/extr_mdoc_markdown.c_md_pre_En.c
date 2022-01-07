
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct roff_node {TYPE_3__* norm; } ;
struct TYPE_6__ {TYPE_2__* Es; } ;
struct TYPE_5__ {TYPE_1__* child; } ;
struct TYPE_4__ {int string; } ;


 int MD_spc ;
 int md_word (int ) ;
 int outflags ;

__attribute__((used)) static int
md_pre_En(struct roff_node *n)
{
 if (n->norm->Es == ((void*)0) ||
     n->norm->Es->child == ((void*)0))
  return 1;

 md_word(n->norm->Es->child->string);
 outflags &= ~MD_spc;
 return 1;
}
