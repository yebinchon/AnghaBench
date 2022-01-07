
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eqn_box {struct eqn_box* bottom; struct eqn_box* top; struct eqn_box* right; struct eqn_box* left; struct eqn_box* text; struct eqn_box* next; struct eqn_box* first; } ;


 int free (struct eqn_box*) ;

void
eqn_box_free(struct eqn_box *bp)
{
 if (bp == ((void*)0))
  return;

 if (bp->first)
  eqn_box_free(bp->first);
 if (bp->next)
  eqn_box_free(bp->next);

 free(bp->text);
 free(bp->left);
 free(bp->right);
 free(bp->top);
 free(bp->bottom);
 free(bp);
}
