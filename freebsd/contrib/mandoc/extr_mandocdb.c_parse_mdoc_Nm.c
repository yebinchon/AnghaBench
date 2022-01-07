
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_node {scalar_t__ sec; scalar_t__ type; TYPE_1__* child; } ;
struct roff_meta {int title; int * name; } ;
struct mpage {int name_head_done; } ;
struct TYPE_2__ {int * string; } ;


 int NAME_HEAD ;
 int NAME_SYN ;
 int NAME_TITLE ;
 scalar_t__ ROFFT_HEAD ;
 scalar_t__ SEC_NAME ;
 scalar_t__ SEC_SYNOPSIS ;
 int putkey (struct mpage*,int *,int ) ;
 int putmdockey (struct mpage*,TYPE_1__*,int ,int ) ;
 scalar_t__ strcasecmp (int *,int ) ;

__attribute__((used)) static int
parse_mdoc_Nm(struct mpage *mpage, const struct roff_meta *meta,
 const struct roff_node *n)
{

 if (SEC_NAME == n->sec)
  putmdockey(mpage, n->child, NAME_TITLE, 0);
 else if (n->sec == SEC_SYNOPSIS && n->type == ROFFT_HEAD) {
  if (n->child == ((void*)0))
   putkey(mpage, meta->name, NAME_SYN);
  else
   putmdockey(mpage, n->child, NAME_SYN, 0);
 }
 if ( ! (mpage->name_head_done ||
     n->child == ((void*)0) || n->child->string == ((void*)0) ||
     strcasecmp(n->child->string, meta->title))) {
  putkey(mpage, n->child->string, NAME_HEAD);
  mpage->name_head_done = 1;
 }
 return 0;
}
