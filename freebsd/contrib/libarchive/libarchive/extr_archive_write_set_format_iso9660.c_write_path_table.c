
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdd {int max_depth; } ;
struct archive_write {int dummy; } ;


 int ARCHIVE_OK ;
 size_t PATH_TABLE_BLOCK_SIZE ;
 int _write_path_table (struct archive_write*,int,int,struct vdd*) ;
 int write_null (struct archive_write*,size_t) ;

__attribute__((used)) static int
write_path_table(struct archive_write *a, int type_m, struct vdd *vdd)
{
 int depth, r;
 size_t path_table_size;

 r = ARCHIVE_OK;
 path_table_size = 0;
 for (depth = 0; depth < vdd->max_depth; depth++) {
  r = _write_path_table(a, type_m, depth, vdd);
  if (r < 0)
   return (r);
  path_table_size += r;
 }


 path_table_size = path_table_size % PATH_TABLE_BLOCK_SIZE;
 if (path_table_size > 0)
  r = write_null(a, PATH_TABLE_BLOCK_SIZE - path_table_size);
 return (r);
}
