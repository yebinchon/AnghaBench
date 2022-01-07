
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {scalar_t__ sec; } ;


 int MD_sp ;
 scalar_t__ SEC_SEE_ALSO ;
 int outflags ;

__attribute__((used)) static int
md_pre_Rs(struct roff_node *n)
{
 if (n->sec == SEC_SEE_ALSO)
  outflags |= MD_sp;
 return 1;
}
