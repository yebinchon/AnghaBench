
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct private_data {int pdata; int description; struct private_data* cmd; } ;
struct archive_write_filter {int * data; } ;


 int ARCHIVE_OK ;
 int __archive_write_program_free (int ) ;
 int archive_string_free (int *) ;
 int free (struct private_data*) ;

__attribute__((used)) static int
archive_compressor_program_free(struct archive_write_filter *f)
{
 struct private_data *data = (struct private_data *)f->data;

 if (data) {
  free(data->cmd);
  archive_string_free(&data->description);
  __archive_write_program_free(data->pdata);
  free(data);
  f->data = ((void*)0);
 }
 return (ARCHIVE_OK);
}
