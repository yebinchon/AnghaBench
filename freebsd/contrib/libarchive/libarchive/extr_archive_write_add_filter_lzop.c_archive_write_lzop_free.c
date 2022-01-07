
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_lzop {int pdata; struct write_lzop* work_buffer; struct write_lzop* compressed; struct write_lzop* uncompressed; } ;
struct archive_write_filter {scalar_t__ data; } ;


 int ARCHIVE_OK ;
 int __archive_write_program_free (int ) ;
 int free (struct write_lzop*) ;

__attribute__((used)) static int
archive_write_lzop_free(struct archive_write_filter *f)
{
 struct write_lzop *data = (struct write_lzop *)f->data;






 __archive_write_program_free(data->pdata);

 free(data);
 return (ARCHIVE_OK);
}
