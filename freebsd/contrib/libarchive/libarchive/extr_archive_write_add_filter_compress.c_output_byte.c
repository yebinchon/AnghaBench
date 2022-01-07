
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct private_data {unsigned char* compressed; scalar_t__ compressed_offset; scalar_t__ compressed_buffer_size; int out_count; } ;
struct archive_write_filter {int next_filter; struct private_data* data; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int __archive_write_filter (int ,unsigned char*,scalar_t__) ;

__attribute__((used)) static int
output_byte(struct archive_write_filter *f, unsigned char c)
{
 struct private_data *state = f->data;

 state->compressed[state->compressed_offset++] = c;
 ++state->out_count;

 if (state->compressed_buffer_size == state->compressed_offset) {
  int ret = __archive_write_filter(f->next_filter,
      state->compressed, state->compressed_buffer_size);
  if (ret != ARCHIVE_OK)
   return ARCHIVE_FATAL;
  state->compressed_offset = 0;
 }

 return ARCHIVE_OK;
}
