
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct private_data {int pdata; } ;
struct archive_write_filter {scalar_t__ data; } ;


 int ARCHIVE_OK ;
 int __archive_write_program_free (int ) ;
 int free (struct private_data*) ;

__attribute__((used)) static int
archive_filter_lz4_free(struct archive_write_filter *f)
{
 struct private_data *data = (struct private_data *)f->data;

 __archive_write_program_free(data->pdata);
 free(data);
 return (ARCHIVE_OK);
}
