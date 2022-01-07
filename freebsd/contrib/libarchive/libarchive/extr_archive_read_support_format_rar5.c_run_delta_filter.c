
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {size_t solid_offset; size_t window_mask; scalar_t__* filtered_buf; scalar_t__* window_buf; } ;
struct rar5 {TYPE_1__ cstate; } ;
struct filter_info {int channels; size_t block_length; size_t block_start; } ;
typedef size_t ssize_t ;


 int ARCHIVE_OK ;

__attribute__((used)) static int run_delta_filter(struct rar5* rar, struct filter_info* flt) {
 int i;
 ssize_t dest_pos, src_pos = 0;

 for(i = 0; i < flt->channels; i++) {
  uint8_t prev_byte = 0;
  for(dest_pos = i;
    dest_pos < flt->block_length;
    dest_pos += flt->channels)
  {
   uint8_t byte;

   byte = rar->cstate.window_buf[
       (rar->cstate.solid_offset + flt->block_start +
       src_pos) & rar->cstate.window_mask];

   prev_byte -= byte;
   rar->cstate.filtered_buf[dest_pos] = prev_byte;
   src_pos++;
  }
 }

 return ARCHIVE_OK;
}
