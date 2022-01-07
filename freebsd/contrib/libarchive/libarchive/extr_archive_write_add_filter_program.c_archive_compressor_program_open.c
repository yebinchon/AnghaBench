
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct private_data {int cmd; int pdata; } ;
struct archive_write_filter {scalar_t__ data; } ;


 int __archive_write_program_open (struct archive_write_filter*,int ,int ) ;

__attribute__((used)) static int
archive_compressor_program_open(struct archive_write_filter *f)
{
 struct private_data *data = (struct private_data *)f->data;

 return __archive_write_program_open(f, data->pdata, data->cmd);
}
