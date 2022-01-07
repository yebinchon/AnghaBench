
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_lrzip {int pdata; } ;
struct archive_write_filter {scalar_t__ data; } ;


 int __archive_write_program_close (struct archive_write_filter*,int ) ;

__attribute__((used)) static int
archive_write_lrzip_close(struct archive_write_filter *f)
{
 struct write_lrzip *data = (struct write_lrzip *)f->data;

 return __archive_write_program_close(f, data->pdata);
}
