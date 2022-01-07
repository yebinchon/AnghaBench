
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int s; } ;
struct private_uuencode {scalar_t__ hold_len; TYPE_1__ encoded_buff; int hold; } ;
struct archive_write_filter {int next_filter; int archive; scalar_t__ data; } ;


 int __archive_write_close_filter (int ) ;
 int __archive_write_filter (int ,int ,int ) ;
 int archive_string_sprintf (TYPE_1__*,char*) ;
 int archive_strlen (TYPE_1__*) ;
 int archive_write_set_bytes_in_last_block (int ,int) ;
 int uu_encode (TYPE_1__*,int ,scalar_t__) ;

__attribute__((used)) static int
archive_filter_uuencode_close(struct archive_write_filter *f)
{
 struct private_uuencode *state = (struct private_uuencode *)f->data;
 int ret, ret2;


 if (state->hold_len != 0)
  uu_encode(&state->encoded_buff, state->hold, state->hold_len);
 archive_string_sprintf(&state->encoded_buff, "`\nend\n");

 archive_write_set_bytes_in_last_block(f->archive, 1);
 ret = __archive_write_filter(f->next_filter,
     state->encoded_buff.s, archive_strlen(&state->encoded_buff));
 ret2 = __archive_write_close_filter(f->next_filter);
 if (ret > ret2)
  ret = ret2;
 return (ret);
}
