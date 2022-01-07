
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {scalar_t__ type; } ;


 int MD_Bk ;
 scalar_t__ ROFFT_BODY ;
 int outflags ;

__attribute__((used)) static void
md_post_Bk(struct roff_node *n)
{
 if (n->type == ROFFT_BODY)
  outflags &= ~MD_Bk;
}
