
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {scalar_t__ sec; } ;


 int MD_br ;
 scalar_t__ SEC_LIBRARY ;
 int outflags ;

__attribute__((used)) static void
md_post_Lb(struct roff_node *n)
{
 if (n->sec == SEC_LIBRARY)
  outflags |= MD_br;
}
