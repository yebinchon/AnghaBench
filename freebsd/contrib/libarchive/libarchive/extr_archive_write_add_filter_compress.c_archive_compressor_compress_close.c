
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct private_data {struct private_data* compressed; int compressed_offset; int cur_code; } ;
struct archive_write_filter {int next_filter; scalar_t__ data; } ;


 int ARCHIVE_OK ;
 int __archive_write_close_filter (int ) ;
 int __archive_write_filter (int ,struct private_data*,int ) ;
 int free (struct private_data*) ;
 int output_code (struct archive_write_filter*,int ) ;
 int output_flush (struct archive_write_filter*) ;

__attribute__((used)) static int
archive_compressor_compress_close(struct archive_write_filter *f)
{
 struct private_data *state = (struct private_data *)f->data;
 int ret, ret2;

 ret = output_code(f, state->cur_code);
 if (ret != ARCHIVE_OK)
  goto cleanup;
 ret = output_flush(f);
 if (ret != ARCHIVE_OK)
  goto cleanup;


 ret = __archive_write_filter(f->next_filter,
     state->compressed, state->compressed_offset);
cleanup:
 ret2 = __archive_write_close_filter(f->next_filter);
 if (ret > ret2)
  ret = ret2;
 free(state->compressed);
 free(state);
 return (ret);
}
