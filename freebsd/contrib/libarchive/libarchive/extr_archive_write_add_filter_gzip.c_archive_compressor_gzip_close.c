
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct private_data {int pdata; } ;
struct archive_write_filter {scalar_t__ data; } ;


 int __archive_write_program_close (struct archive_write_filter*,int ) ;

__attribute__((used)) static int
archive_compressor_gzip_close(struct archive_write_filter *f)
{
 struct private_data *data = (struct private_data *)f->data;

 return __archive_write_program_close(f, data->pdata);
}
