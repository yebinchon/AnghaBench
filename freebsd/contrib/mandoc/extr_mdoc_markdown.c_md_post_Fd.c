
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int dummy; } ;


 int MD_br ;
 int md_post_raw (struct roff_node*) ;
 int outflags ;

__attribute__((used)) static void
md_post_Fd(struct roff_node *n)
{
 md_post_raw(n);
 outflags |= MD_br;
}
