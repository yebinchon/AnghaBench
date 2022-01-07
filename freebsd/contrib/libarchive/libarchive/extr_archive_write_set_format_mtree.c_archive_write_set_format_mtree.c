
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int archive_write_set_format_mtree_default (struct archive*,char*) ;

int
archive_write_set_format_mtree(struct archive *_a)
{
 return archive_write_set_format_mtree_default(_a,
  "archive_write_set_format_mtree");
}
