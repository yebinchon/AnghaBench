
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_2__ {int* window_buf; int window_mask; int solid_offset; int filtered_buf; } ;
struct rar5 {TYPE_1__ cstate; } ;
struct filter_info {int block_start; int block_length; } ;
typedef int ssize_t ;


 int ARCHIVE_OK ;
 int circular_memcpy (int ,int*,int,int,int) ;
 int read_filter_data (struct rar5*,int) ;
 int write_filter_data (struct rar5*,int,int) ;

__attribute__((used)) static int run_arm_filter(struct rar5* rar, struct filter_info* flt) {
 ssize_t i = 0;
 uint32_t offset;

 circular_memcpy(rar->cstate.filtered_buf,
     rar->cstate.window_buf, rar->cstate.window_mask,
     rar->cstate.solid_offset + flt->block_start,
     rar->cstate.solid_offset + flt->block_start + flt->block_length);

 for(i = 0; i < flt->block_length - 3; i += 4) {
  uint8_t* b = &rar->cstate.window_buf[
      (rar->cstate.solid_offset +
      flt->block_start + i + 3) & rar->cstate.window_mask];

  if(*b == 0xEB) {

   offset = read_filter_data(rar,
       (rar->cstate.solid_offset + flt->block_start + i) &
        rar->cstate.window_mask) & 0x00ffffff;

   offset -= (uint32_t) ((i + flt->block_start) / 4);
   offset = (offset & 0x00ffffff) | 0xeb000000;
   write_filter_data(rar, (uint32_t)i, offset);
  }
 }

 return ARCHIVE_OK;
}
