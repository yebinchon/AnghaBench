
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {int dummy; } ;
typedef size_t int64_t ;


 int ARCHIVE_OK ;
 size_t LOGICAL_BLOCK_SIZE ;
 int write_null (struct archive_write*,size_t) ;

__attribute__((used)) static int
wb_write_padding_to_temp(struct archive_write *a, int64_t csize)
{
 size_t ns;
 int ret;

 ns = (size_t)(csize % LOGICAL_BLOCK_SIZE);
 if (ns != 0)
  ret = write_null(a, LOGICAL_BLOCK_SIZE - ns);
 else
  ret = ARCHIVE_OK;
 return (ret);
}
