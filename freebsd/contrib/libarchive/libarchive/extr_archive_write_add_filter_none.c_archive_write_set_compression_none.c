
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int ARCHIVE_OK ;

int
archive_write_set_compression_none(struct archive *a)
{
 (void)a;
 return (ARCHIVE_OK);
}
