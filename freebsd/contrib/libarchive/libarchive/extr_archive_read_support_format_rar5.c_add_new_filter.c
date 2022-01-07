
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int filters; } ;
struct rar5 {TYPE_1__ cstate; } ;
struct filter_info {int dummy; } ;


 scalar_t__ calloc (int,int) ;
 int cdeque_filter (struct filter_info*) ;
 int cdeque_push_back (int *,int ) ;

__attribute__((used)) static struct filter_info* add_new_filter(struct rar5* rar) {
 struct filter_info* f =
  (struct filter_info*) calloc(1, sizeof(struct filter_info));

 if(!f) {
  return ((void*)0);
 }

 cdeque_push_back(&rar->cstate.filters, cdeque_filter(f));
 return f;
}
