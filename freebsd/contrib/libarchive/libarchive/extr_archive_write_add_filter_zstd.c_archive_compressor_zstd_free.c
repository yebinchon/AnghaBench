
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct private_data* dst; } ;
struct private_data {int pdata; TYPE_1__ out; int cstream; } ;
struct archive_write_filter {int * data; } ;


 int ARCHIVE_OK ;
 int ZSTD_freeCStream (int ) ;
 int __archive_write_program_free (int ) ;
 int free (struct private_data*) ;

__attribute__((used)) static int
archive_compressor_zstd_free(struct archive_write_filter *f)
{
 struct private_data *data = (struct private_data *)f->data;




 __archive_write_program_free(data->pdata);

 free(data);
 f->data = ((void*)0);
 return (ARCHIVE_OK);
}
