
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int dummy; } ;


 int MD_sp ;
 int code_blocks ;
 int md_stack (char) ;
 int outflags ;
 scalar_t__ quote_blocks ;

__attribute__((used)) static int
md_pre_Dl(struct roff_node *n)
{




 if (quote_blocks) {
  md_stack('>');
  quote_blocks++;
 } else {
  md_stack('\t');
  code_blocks++;
 }
 outflags |= MD_sp;
 return 1;
}
