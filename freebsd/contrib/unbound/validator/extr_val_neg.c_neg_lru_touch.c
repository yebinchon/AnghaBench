
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct val_neg_data {int dummy; } ;
struct val_neg_cache {struct val_neg_data* first; } ;


 int neg_lru_front (struct val_neg_cache*,struct val_neg_data*) ;
 int neg_lru_remove (struct val_neg_cache*,struct val_neg_data*) ;

__attribute__((used)) static void neg_lru_touch(struct val_neg_cache* neg,
 struct val_neg_data* data)
{
 if(data == neg->first)
  return;

 neg_lru_remove(neg, data);

 neg_lru_front(neg, data);
}
