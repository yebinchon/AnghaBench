
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {scalar_t__ sec; scalar_t__ type; } ;
struct roff_meta {int dummy; } ;
struct mpage {int dummy; } ;


 scalar_t__ ROFFT_HEAD ;
 scalar_t__ SEC_CUSTOM ;

__attribute__((used)) static int
parse_mdoc_Sh(struct mpage *mpage, const struct roff_meta *meta,
 const struct roff_node *n)
{

 return n->sec == SEC_CUSTOM && n->type == ROFFT_HEAD;
}
