
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct roff_node {scalar_t__ type; scalar_t__ sec; TYPE_1__* child; } ;
struct roff_meta {int dummy; } ;
struct mpage {int dummy; } ;
struct TYPE_2__ {struct roff_node* next; } ;


 scalar_t__ ROFFT_TEXT ;
 scalar_t__ SEC_SYNOPSIS ;
 int TYPE_Fa ;
 int TYPE_Vt ;
 int parse_mdoc_fname (struct mpage*,TYPE_1__*) ;
 int putmdockey (struct mpage*,struct roff_node const*,int ,int ) ;

__attribute__((used)) static int
parse_mdoc_Fn(struct mpage *mpage, const struct roff_meta *meta,
 const struct roff_node *n)
{
 uint64_t mask;

 if (n->child == ((void*)0))
  return 0;

 parse_mdoc_fname(mpage, n->child);

 n = n->child->next;
 if (n != ((void*)0) && n->type == ROFFT_TEXT) {
  mask = TYPE_Fa;
  if (n->sec == SEC_SYNOPSIS)
   mask |= TYPE_Vt;
  putmdockey(mpage, n, mask, 0);
 }

 return 0;
}
