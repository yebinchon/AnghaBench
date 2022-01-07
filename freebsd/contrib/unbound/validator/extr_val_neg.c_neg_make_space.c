
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct val_neg_cache {scalar_t__ max; scalar_t__ use; scalar_t__ last; } ;


 int neg_delete_data (struct val_neg_cache*,scalar_t__) ;

__attribute__((used)) static void neg_make_space(struct val_neg_cache* neg, size_t need)
{

 while(neg->last && neg->max < neg->use + need) {
  neg_delete_data(neg, neg->last);
 }
}
