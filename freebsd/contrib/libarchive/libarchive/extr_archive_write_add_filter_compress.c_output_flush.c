
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct private_data {int bit_offset; int code_len; int bit_buf; } ;
struct archive_write_filter {struct private_data* data; } ;


 int ARCHIVE_OK ;
 int output_byte (struct archive_write_filter*,int ) ;

__attribute__((used)) static int
output_flush(struct archive_write_filter *f)
{
 struct private_data *state = f->data;
 int ret;


 if (state->bit_offset % 8) {
  state->code_len = (state->bit_offset % 8 + 7) / 8;
  ret = output_byte(f, state->bit_buf);
  if (ret != ARCHIVE_OK)
   return ret;
 }

 return (ARCHIVE_OK);
}
