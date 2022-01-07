
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct private_data {int bit_offset; int bit_buf; int code_len; scalar_t__ first_free; scalar_t__ cur_maxcode; scalar_t__ max_maxcode; } ;
struct archive_write_filter {struct private_data* data; } ;


 int ARCHIVE_OK ;
 int CLEAR ;
 void* MAXCODE (int) ;
 int output_byte (struct archive_write_filter*,int) ;
 int* rmask ;

__attribute__((used)) static int
output_code(struct archive_write_filter *f, int ocode)
{
 struct private_data *state = f->data;
 int bits, ret, clear_flg, bit_offset;

 clear_flg = ocode == CLEAR;





 bit_offset = state->bit_offset % 8;
 state->bit_buf |= (ocode << bit_offset) & 0xff;
 output_byte(f, state->bit_buf);

 bits = state->code_len - (8 - bit_offset);
 ocode >>= 8 - bit_offset;

 if (bits >= 8) {
  output_byte(f, ocode & 0xff);
  ocode >>= 8;
  bits -= 8;
 }

 state->bit_offset += state->code_len;
 state->bit_buf = ocode & rmask[bits];
 if (state->bit_offset == state->code_len * 8)
  state->bit_offset = 0;





 if (clear_flg || state->first_free > state->cur_maxcode) {




  if (state->bit_offset > 0) {
   while (state->bit_offset < state->code_len * 8) {
    ret = output_byte(f, state->bit_buf);
    if (ret != ARCHIVE_OK)
     return ret;
    state->bit_offset += 8;
    state->bit_buf = 0;
   }
  }
  state->bit_buf = 0;
  state->bit_offset = 0;

  if (clear_flg) {
   state->code_len = 9;
   state->cur_maxcode = MAXCODE(state->code_len);
  } else {
   state->code_len++;
   if (state->code_len == 16)
    state->cur_maxcode = state->max_maxcode;
   else
    state->cur_maxcode = MAXCODE(state->code_len);
  }
 }

 return (ARCHIVE_OK);
}
