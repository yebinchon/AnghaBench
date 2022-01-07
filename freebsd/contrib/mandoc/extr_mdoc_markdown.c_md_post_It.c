
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct roff_node {scalar_t__ type; TYPE_3__* norm; struct roff_node* prev; int * next; TYPE_1__* parent; } ;
struct TYPE_5__ {int type; int ncols; int * cols; } ;
struct TYPE_6__ {TYPE_2__ Bl; } ;
struct TYPE_4__ {struct roff_node* parent; } ;


 int ESC_FON ;







 int MD_spc ;
 scalar_t__ ROFFT_BODY ;
 scalar_t__ ROFFT_HEAD ;
 int code_blocks ;
 int escflags ;
 int list_blocks ;
 int md_post_D1 (struct roff_node*) ;
 int md_stack (char) ;
 scalar_t__ outcount ;
 int outflags ;
 int putchar (char) ;
 int quote_blocks ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static void
md_post_It(struct roff_node *n)
{
 struct roff_node *bln;
 int i, nc;

 if (n->type != ROFFT_BODY)
  return;

 bln = n->parent->parent;
 switch (bln->norm->Bl.type) {
 case 134:
 case 132:
 case 129:
 case 131:
  md_stack((char)-1);
  if (code_blocks || quote_blocks)
   list_blocks--;
  break;
 case 128:
 case 130:
  md_post_D1(n);
  break;

 case 133:
  if (n->next == ((void*)0))
   break;



  i = 0;
  while ((n = n->prev) != ((void*)0) && n->type != ROFFT_HEAD)
   i++;







  nc = bln->norm->Bl.ncols;
  i = i < nc ? strlen(bln->norm->Bl.cols[i]) - outcount +
      (nc < 5 ? 4 : nc == 5 ? 3 : 1) : 1;
  if (i < 1)
   i = 1;
  while (i-- > 0)
   putchar(' ');

  outflags &= ~MD_spc;
  escflags &= ~ESC_FON;
  outcount = 0;
  break;

 default:
  break;
 }
}
