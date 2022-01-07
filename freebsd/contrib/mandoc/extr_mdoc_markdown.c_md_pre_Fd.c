
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int dummy; } ;


 int md_pre_raw (struct roff_node*) ;
 int md_pre_syn (struct roff_node*) ;

__attribute__((used)) static int
md_pre_Fd(struct roff_node *n)
{
 md_pre_syn(n);
 md_pre_raw(n);
 return 1;
}
