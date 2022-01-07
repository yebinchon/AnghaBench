
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtree_writer {int classic; int output_global_set; } ;
struct archive_write {scalar_t__ format_data; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int archive_write_set_format_mtree_default (struct archive*,char*) ;

int
archive_write_set_format_mtree_classic(struct archive *_a)
{
 int r;

 r = archive_write_set_format_mtree_default(_a,
  "archive_write_set_format_mtree_classic");
 if (r == ARCHIVE_OK) {
  struct archive_write *a = (struct archive_write *)_a;
  struct mtree_writer *mtree;

  mtree = (struct mtree_writer *)a->format_data;


  mtree->classic = 1;


  mtree->output_global_set = 1;
 }
 return (r);
}
