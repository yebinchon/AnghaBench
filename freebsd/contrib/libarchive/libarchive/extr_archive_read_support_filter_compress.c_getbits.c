
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct private_data {int bits_avail; scalar_t__ avail_in; scalar_t__ consume_unnotified; int bit_buffer; int bytes_in_section; int * next_in; } ;
struct archive_read_filter {int upstream; scalar_t__ data; } ;
typedef scalar_t__ ssize_t ;


 int ARCHIVE_FATAL ;
 int * __archive_read_filter_ahead (int ,int,scalar_t__*) ;
 int __archive_read_filter_consume (int ,scalar_t__) ;

__attribute__((used)) static int
getbits(struct archive_read_filter *self, int n)
{
 struct private_data *state = (struct private_data *)self->data;
 int code;
 ssize_t ret;
 static const int mask[] = {
  0x00, 0x01, 0x03, 0x07, 0x0f, 0x1f, 0x3f, 0x7f, 0xff,
  0x1ff, 0x3ff, 0x7ff, 0xfff, 0x1fff, 0x3fff, 0x7fff, 0xffff
 };

 while (state->bits_avail < n) {
  if (state->avail_in <= 0) {
   if (state->consume_unnotified) {
    __archive_read_filter_consume(self->upstream,
     state->consume_unnotified);
    state->consume_unnotified = 0;
   }
   state->next_in
       = __archive_read_filter_ahead(self->upstream,
    1, &ret);
   if (ret == 0)
    return (-1);
   if (ret < 0 || state->next_in == ((void*)0))
    return (ARCHIVE_FATAL);
   state->consume_unnotified = state->avail_in = ret;
  }
  state->bit_buffer |= *state->next_in++ << state->bits_avail;
  state->avail_in--;
  state->bits_avail += 8;
  state->bytes_in_section++;
 }

 code = state->bit_buffer;
 state->bit_buffer >>= n;
 state->bits_avail -= n;

 return (code & mask[n]);
}
