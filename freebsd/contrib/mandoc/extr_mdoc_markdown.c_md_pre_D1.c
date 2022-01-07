
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int dummy; } ;


 int MD_sp ;
 scalar_t__ code_blocks ;
 int md_stack (char) ;
 int outflags ;
 int quote_blocks ;

__attribute__((used)) static int
md_pre_D1(struct roff_node *n)
{




 if (code_blocks) {
  md_stack('\t');
  code_blocks++;
 } else {
  md_stack('>');
  quote_blocks++;
 }
 outflags |= MD_sp;
 return 1;
}
