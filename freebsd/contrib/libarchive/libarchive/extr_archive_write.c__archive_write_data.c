
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {int (* format_write_data ) (struct archive_write*,void const*,size_t) ;int archive; } ;
struct archive {int dummy; } ;
typedef int ssize_t ;


 int ARCHIVE_STATE_DATA ;
 int ARCHIVE_WRITE_MAGIC ;
 size_t INT_MAX ;
 int archive_check_magic (int *,int ,int ,char*) ;
 int archive_clear_error (int *) ;
 int stub1 (struct archive_write*,void const*,size_t) ;

__attribute__((used)) static ssize_t
_archive_write_data(struct archive *_a, const void *buff, size_t s)
{
 struct archive_write *a = (struct archive_write *)_a;
 const size_t max_write = INT_MAX;

 archive_check_magic(&a->archive, ARCHIVE_WRITE_MAGIC,
     ARCHIVE_STATE_DATA, "archive_write_data");

 if (s > max_write)
  s = max_write;
 archive_clear_error(&a->archive);
 return ((a->format_write_data)(a, buff, s));
}
