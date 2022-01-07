
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_disk {char const* (* lookup_uname ) (int ,int ) ;int lookup_uname_data; } ;
struct archive {int dummy; } ;
typedef int la_int64_t ;


 scalar_t__ ARCHIVE_OK ;
 int ARCHIVE_READ_DISK_MAGIC ;
 int ARCHIVE_STATE_ANY ;
 scalar_t__ __archive_check_magic (struct archive*,int ,int ,char*) ;
 char const* stub1 (int ,int ) ;

const char *
archive_read_disk_uname(struct archive *_a, la_int64_t uid)
{
 struct archive_read_disk *a = (struct archive_read_disk *)_a;
 if (ARCHIVE_OK != __archive_check_magic(_a, ARCHIVE_READ_DISK_MAGIC,
  ARCHIVE_STATE_ANY, "archive_read_disk_uname"))
  return (((void*)0));
 if (a->lookup_uname == ((void*)0))
  return (((void*)0));
 return ((*a->lookup_uname)(a->lookup_uname_data, uid));
}
