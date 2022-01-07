
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct roff_node {TYPE_3__* parent; } ;
struct TYPE_6__ {scalar_t__ tok; TYPE_2__* norm; } ;
struct TYPE_4__ {scalar_t__ quote_T; } ;
struct TYPE_5__ {TYPE_1__ Rs; } ;


 scalar_t__ MDOC_Rs ;
 int MD_spc ;
 int md_post_pc (struct roff_node*) ;
 int md_rawword (char*) ;
 int md_word (char*) ;
 int outflags ;

__attribute__((used)) static void
md_post__T(struct roff_node *n)
{
 outflags &= ~MD_spc;
 if (n->parent->tok == MDOC_Rs && n->parent->norm->Rs.quote_T)
  md_word("\"");
 else
  md_rawword("*");
 md_post_pc(n);
}
