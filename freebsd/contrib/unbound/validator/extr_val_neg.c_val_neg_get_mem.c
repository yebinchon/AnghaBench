
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct val_neg_cache {int use; int lock; } ;


 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;

size_t val_neg_get_mem(struct val_neg_cache* neg)
{
 size_t result;
 lock_basic_lock(&neg->lock);
 result = sizeof(*neg) + neg->use;
 lock_basic_unlock(&neg->lock);
 return result;
}
