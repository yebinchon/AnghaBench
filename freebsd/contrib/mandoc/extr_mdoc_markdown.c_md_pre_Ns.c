
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int dummy; } ;


 int MD_spc ;
 int outflags ;

__attribute__((used)) static int
md_pre_Ns(struct roff_node *n)
{
 outflags &= ~MD_spc;
 return 0;
}
