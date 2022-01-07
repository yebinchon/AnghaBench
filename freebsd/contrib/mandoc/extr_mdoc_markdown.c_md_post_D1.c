
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

__attribute__((used)) static void
md_post_D1(struct roff_node *n)
{
 md_stack((char)-1);
 if (code_blocks)
  code_blocks--;
 else
  quote_blocks--;
 outflags |= MD_sp;
}
