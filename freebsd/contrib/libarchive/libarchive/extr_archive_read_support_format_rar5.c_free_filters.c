
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdeque {int dummy; } ;
struct TYPE_2__ {scalar_t__ last_block_length; scalar_t__ last_block_start; struct cdeque filters; } ;
struct rar5 {TYPE_1__ cstate; } ;
struct filter_info {int dummy; } ;


 scalar_t__ CDE_OK ;
 int cdeque_clear (struct cdeque*) ;
 int cdeque_filter_p (struct filter_info**) ;
 scalar_t__ cdeque_pop_front (struct cdeque*,int ) ;
 scalar_t__ cdeque_size (struct cdeque*) ;
 int free (struct filter_info*) ;

__attribute__((used)) static void free_filters(struct rar5* rar) {
 struct cdeque* d = &rar->cstate.filters;
 while(cdeque_size(d) > 0) {
  struct filter_info* f = ((void*)0);


  if (CDE_OK == cdeque_pop_front(d, cdeque_filter_p(&f)))
   free(f);
 }

 cdeque_clear(d);


 rar->cstate.last_block_start = 0;
 rar->cstate.last_block_length = 0;
}
