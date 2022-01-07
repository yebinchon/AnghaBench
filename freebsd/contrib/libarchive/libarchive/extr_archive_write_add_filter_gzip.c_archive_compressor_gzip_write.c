
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct private_data {int pdata; } ;
struct archive_write_filter {scalar_t__ data; } ;


 int __archive_write_program_write (struct archive_write_filter*,int ,void const*,size_t) ;

__attribute__((used)) static int
archive_compressor_gzip_write(struct archive_write_filter *f, const void *buff,
    size_t length)
{
 struct private_data *data = (struct private_data *)f->data;

 return __archive_write_program_write(f, data->pdata, buff, length);
}
