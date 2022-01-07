
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {int bytes_per_block; int archive; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WRITE_MAGIC ;
 int archive_check_magic (int *,int ,int ,char*) ;

int
archive_write_set_bytes_per_block(struct archive *_a, int bytes_per_block)
{
 struct archive_write *a = (struct archive_write *)_a;
 archive_check_magic(&a->archive, ARCHIVE_WRITE_MAGIC,
     ARCHIVE_STATE_NEW, "archive_write_set_bytes_per_block");
 a->bytes_per_block = bytes_per_block;
 return (ARCHIVE_OK);
}
