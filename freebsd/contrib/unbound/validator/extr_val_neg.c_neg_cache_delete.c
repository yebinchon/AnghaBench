
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct val_neg_cache {int tree; int lock; } ;


 int free (struct val_neg_cache*) ;
 int lock_basic_destroy (int *) ;
 int neg_clear_zones ;
 int traverse_postorder (int *,int *,int *) ;

void neg_cache_delete(struct val_neg_cache* neg)
{
 if(!neg) return;
 lock_basic_destroy(&neg->lock);

 traverse_postorder(&neg->tree, &neg_clear_zones, ((void*)0));
 free(neg);
}
