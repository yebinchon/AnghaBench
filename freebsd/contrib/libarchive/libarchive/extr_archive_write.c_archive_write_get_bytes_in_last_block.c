
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {int bytes_in_last_block; int archive; } ;
struct archive {int dummy; } ;


 int ARCHIVE_STATE_ANY ;
 int ARCHIVE_WRITE_MAGIC ;
 int archive_check_magic (int *,int ,int ,char*) ;

int
archive_write_get_bytes_in_last_block(struct archive *_a)
{
 struct archive_write *a = (struct archive_write *)_a;
 archive_check_magic(&a->archive, ARCHIVE_WRITE_MAGIC,
     ARCHIVE_STATE_ANY, "archive_write_get_bytes_in_last_block");
 return (a->bytes_in_last_block);
}
