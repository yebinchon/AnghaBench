
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int last_write_ptr; int filtered_buf; } ;
struct rar5 {TYPE_1__ cstate; } ;
struct filter_info {int type; int block_length; } ;
struct archive_read {int archive; } ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_ERRNO_PROGRAMMER ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ENOMEM ;




 int archive_set_error (int *,int ,char*,...) ;
 int free (int ) ;
 struct rar5* get_context (struct archive_read*) ;
 int malloc (int ) ;
 int push_data_ready (struct archive_read*,struct rar5*,int ,int ,int ) ;
 int run_arm_filter (struct rar5*,struct filter_info*) ;
 int run_delta_filter (struct rar5*,struct filter_info*) ;
 int run_e8e9_filter (struct rar5*,struct filter_info*,int) ;

__attribute__((used)) static int run_filter(struct archive_read* a, struct filter_info* flt) {
 int ret;
 struct rar5* rar = get_context(a);

 free(rar->cstate.filtered_buf);

 rar->cstate.filtered_buf = malloc(flt->block_length);
 if(!rar->cstate.filtered_buf) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate memory for filter data.");
  return ARCHIVE_FATAL;
 }

 switch(flt->type) {
  case 130:
   ret = run_delta_filter(rar, flt);
   break;

  case 129:

  case 128:
   ret = run_e8e9_filter(rar, flt,
       flt->type == 128);
   break;

  case 131:
   ret = run_arm_filter(rar, flt);
   break;

  default:
   archive_set_error(&a->archive,
       ARCHIVE_ERRNO_FILE_FORMAT,
       "Unsupported filter type: 0x%x", flt->type);
   return ARCHIVE_FATAL;
 }

 if(ret != ARCHIVE_OK) {

  return ret;
 }

 if(ARCHIVE_OK != push_data_ready(a, rar, rar->cstate.filtered_buf,
     flt->block_length, rar->cstate.last_write_ptr))
 {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_PROGRAMMER,
      "Stack overflow when submitting unpacked data");

  return ARCHIVE_FATAL;
 }

 rar->cstate.last_write_ptr += flt->block_length;
 return ARCHIVE_OK;
}
