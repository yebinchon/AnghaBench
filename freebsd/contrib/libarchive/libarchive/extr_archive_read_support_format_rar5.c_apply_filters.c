
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int all_filters_applied; scalar_t__ write_ptr; scalar_t__ last_write_ptr; int filters; } ;
struct rar5 {TYPE_1__ cstate; } ;
struct filter_info {scalar_t__ block_start; scalar_t__ block_length; } ;
struct archive_read {int dummy; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_RETRY ;
 scalar_t__ CDE_OK ;
 int cdeque_filter_p (struct filter_info**) ;
 scalar_t__ cdeque_front (int *,int ) ;
 int cdeque_pop_front (int *,int ) ;
 int free (struct filter_info*) ;
 struct rar5* get_context (struct archive_read*) ;
 int push_window_data (struct archive_read*,struct rar5*,scalar_t__,scalar_t__) ;
 int run_filter (struct archive_read*,struct filter_info*) ;

__attribute__((used)) static int apply_filters(struct archive_read* a) {
 struct filter_info* flt;
 struct rar5* rar = get_context(a);
 int ret;

 rar->cstate.all_filters_applied = 0;



 if(CDE_OK == cdeque_front(&rar->cstate.filters,
     cdeque_filter_p(&flt))) {


  if(rar->cstate.write_ptr > flt->block_start &&
      rar->cstate.write_ptr >= flt->block_start +
      flt->block_length) {


   if(rar->cstate.last_write_ptr == flt->block_start) {


    ret = run_filter(a, flt);
    if(ret != ARCHIVE_OK) {

     return ret;
    }




    (void) cdeque_pop_front(&rar->cstate.filters,
        cdeque_filter_p(&flt));

    free(flt);
   } else {


    push_window_data(a, rar,
        rar->cstate.last_write_ptr,
        flt->block_start);
   }



   return ARCHIVE_RETRY;
  }
 }

 rar->cstate.all_filters_applied = 1;
 return ARCHIVE_OK;
}
