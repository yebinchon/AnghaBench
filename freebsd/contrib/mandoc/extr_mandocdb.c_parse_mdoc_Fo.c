
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {scalar_t__ type; int * child; } ;
struct roff_meta {int dummy; } ;
struct mpage {int dummy; } ;


 scalar_t__ ROFFT_HEAD ;
 int parse_mdoc_fname (struct mpage*,int *) ;

__attribute__((used)) static int
parse_mdoc_Fo(struct mpage *mpage, const struct roff_meta *meta,
 const struct roff_node *n)
{

 if (n->type != ROFFT_HEAD)
  return 1;

 if (n->child != ((void*)0))
  parse_mdoc_fname(mpage, n->child);

 return 0;
}
