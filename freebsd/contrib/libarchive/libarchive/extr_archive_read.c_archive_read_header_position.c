
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int header_position; } ;
struct archive {int dummy; } ;
typedef int la_int64_t ;


 int ARCHIVE_READ_MAGIC ;
 int ARCHIVE_STATE_ANY ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;

la_int64_t
archive_read_header_position(struct archive *_a)
{
 struct archive_read *a = (struct archive_read *)_a;
 archive_check_magic(_a, ARCHIVE_READ_MAGIC,
     ARCHIVE_STATE_ANY, "archive_read_header_position");
 return (a->header_position);
}
