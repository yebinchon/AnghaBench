
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct private_data {struct private_data* out_block; } ;
struct archive_read_filter {scalar_t__ data; } ;


 int ARCHIVE_OK ;
 int free (struct private_data*) ;

__attribute__((used)) static int
compress_filter_close(struct archive_read_filter *self)
{
 struct private_data *state = (struct private_data *)self->data;

 free(state->out_block);
 free(state);
 return (ARCHIVE_OK);
}
