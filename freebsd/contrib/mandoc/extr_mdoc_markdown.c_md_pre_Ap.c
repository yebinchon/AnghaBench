
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int dummy; } ;


 int MD_spc ;
 int md_word (char*) ;
 int outflags ;

__attribute__((used)) static int
md_pre_Ap(struct roff_node *n)
{
 outflags &= ~MD_spc;
 md_word("'");
 outflags &= ~MD_spc;
 return 0;
}
