
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct roff_node {scalar_t__ sec; int child; } ;
struct roff_meta {int dummy; } ;
struct mpage {int dummy; } ;


 scalar_t__ SEC_SYNOPSIS ;
 int TYPE_Fa ;
 int TYPE_Vt ;
 int putmdockey (struct mpage*,int ,int ,int ) ;

__attribute__((used)) static int
parse_mdoc_Fa(struct mpage *mpage, const struct roff_meta *meta,
 const struct roff_node *n)
{
 uint64_t mask;

 mask = TYPE_Fa;
 if (n->sec == SEC_SYNOPSIS)
  mask |= TYPE_Vt;

 putmdockey(mpage, n->child, mask, 0);
 return 0;
}
