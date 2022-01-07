
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_lrzip {int pdata; } ;
struct archive_write_filter {scalar_t__ data; } ;


 int __archive_write_program_write (struct archive_write_filter*,int ,void const*,size_t) ;

__attribute__((used)) static int
archive_write_lrzip_write(struct archive_write_filter *f,
    const void *buff, size_t length)
{
 struct write_lrzip *data = (struct write_lrzip *)f->data;

 return __archive_write_program_write(f, data->pdata, buff, length);
}
