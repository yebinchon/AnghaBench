
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int initialized; int all_filters_applied; scalar_t__ last_write_ptr; scalar_t__ write_ptr; int filters; int window_buf; } ;
struct TYPE_3__ {int solid; } ;
struct rar5 {TYPE_2__ cstate; TYPE_1__ main; } ;
struct filter_info {int block_start; } ;
struct archive_read {int archive; } ;
typedef scalar_t__ int64_t ;


 int ARCHIVE_EOF ;
 int ARCHIVE_ERRNO_PROGRAMMER ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_RETRY ;
 scalar_t__ CDE_OK ;
 int apply_filters (struct archive_read*) ;
 int archive_set_error (int *,int ,char*) ;
 int cdeque_filter_p (struct filter_info**) ;
 scalar_t__ cdeque_front (int *,int ) ;
 scalar_t__ cdeque_size (int *) ;
 struct rar5* get_context (struct archive_read*) ;
 int init_unpack (struct rar5*) ;
 int process_block (struct archive_read*) ;
 int push_window_data (struct archive_read*,struct rar5*,scalar_t__,scalar_t__) ;
 scalar_t__ rar5_min (int ,scalar_t__) ;

__attribute__((used)) static int do_uncompress_file(struct archive_read* a) {
 struct rar5* rar = get_context(a);
 int ret;
 int64_t max_end_pos;

 if(!rar->cstate.initialized) {


  if(!rar->main.solid || !rar->cstate.window_buf) {
   init_unpack(rar);
  }

  rar->cstate.initialized = 1;
 }

 if(rar->cstate.all_filters_applied == 1) {





  while(1) {
   ret = process_block(a);
   if(ret == ARCHIVE_EOF || ret == ARCHIVE_FATAL)
    return ret;

   if(rar->cstate.last_write_ptr ==
       rar->cstate.write_ptr) {


    continue;
   }



   break;
  }
 }



 ret = apply_filters(a);
 if(ret == ARCHIVE_RETRY) {
  return ARCHIVE_OK;
 } else if(ret == ARCHIVE_FATAL) {
  return ARCHIVE_FATAL;
 }



 if(cdeque_size(&rar->cstate.filters) > 0) {


  struct filter_info* flt;


  if(CDE_OK != cdeque_front(&rar->cstate.filters,
      cdeque_filter_p(&flt)))
  {
   archive_set_error(&a->archive,
       ARCHIVE_ERRNO_PROGRAMMER,
       "Can't read first filter");
   return ARCHIVE_FATAL;
  }

  max_end_pos = rar5_min(flt->block_start,
      rar->cstate.write_ptr);
 } else {



  max_end_pos = rar->cstate.write_ptr;
 }

 if(max_end_pos == rar->cstate.last_write_ptr) {
  return ARCHIVE_RETRY;
 } else {




  push_window_data(a, rar, rar->cstate.last_write_ptr,
      max_end_pos);
  rar->cstate.last_write_ptr = max_end_pos;
 }

 return ARCHIVE_OK;
}
