
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct roff_node {TYPE_2__* norm; } ;
struct TYPE_3__ {scalar_t__ type; scalar_t__ count; } ;
struct TYPE_4__ {TYPE_1__ Bl; } ;


 scalar_t__ LIST_column ;
 int MD_sp ;
 int md_pre_Dl (struct roff_node*) ;
 int outflags ;

__attribute__((used)) static int
md_pre_Bl(struct roff_node *n)
{
 n->norm->Bl.count = 0;
 if (n->norm->Bl.type == LIST_column)
  md_pre_Dl(n);
 outflags |= MD_sp;
 return 1;
}
