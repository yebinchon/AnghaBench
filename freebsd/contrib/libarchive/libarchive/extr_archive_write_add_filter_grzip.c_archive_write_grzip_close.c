
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_grzip {int pdata; } ;
struct archive_write_filter {scalar_t__ data; } ;


 int __archive_write_program_close (struct archive_write_filter*,int ) ;

__attribute__((used)) static int
archive_write_grzip_close(struct archive_write_filter *f)
{
 struct write_grzip *data = (struct write_grzip *)f->data;

 return __archive_write_program_close(f, data->pdata);
}
