
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {scalar_t__ type; } ;


 scalar_t__ ROFFT_HEAD ;

__attribute__((used)) static int
md_cond_head(struct roff_node *n)
{
 return n->type == ROFFT_HEAD;
}
