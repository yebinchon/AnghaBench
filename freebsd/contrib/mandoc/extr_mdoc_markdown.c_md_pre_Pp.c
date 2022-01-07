
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int dummy; } ;


 int MD_sp ;
 int outflags ;

__attribute__((used)) static int
md_pre_Pp(struct roff_node *n)
{
 outflags |= MD_sp;
 return 0;
}
