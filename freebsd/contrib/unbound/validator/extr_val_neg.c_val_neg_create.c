
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct val_neg_cache {size_t nsec3_max_iter; int max; int lock; int tree; } ;
struct config_file {int neg_cache_size; } ;


 scalar_t__ calloc (int,int) ;
 int lock_basic_init (int *) ;
 int lock_protect (int *,struct val_neg_cache*,int) ;
 int log_err (char*) ;
 int rbtree_init (int *,int *) ;
 int val_neg_zone_compare ;

struct val_neg_cache* val_neg_create(struct config_file* cfg, size_t maxiter)
{
 struct val_neg_cache* neg = (struct val_neg_cache*)calloc(1,
  sizeof(*neg));
 if(!neg) {
  log_err("Could not create neg cache: out of memory");
  return ((void*)0);
 }
 neg->nsec3_max_iter = maxiter;
 neg->max = 1024*1024;
 if(cfg) neg->max = cfg->neg_cache_size;
 rbtree_init(&neg->tree, &val_neg_zone_compare);
 lock_basic_init(&neg->lock);
 lock_protect(&neg->lock, neg, sizeof(*neg));
 return neg;
}
