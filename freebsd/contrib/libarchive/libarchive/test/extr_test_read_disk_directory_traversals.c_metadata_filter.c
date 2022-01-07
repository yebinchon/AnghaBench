
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int archive_entry_ctime_is_set (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 int archive_entry_mtime_is_set (struct archive_entry*) ;
 scalar_t__ archive_read_disk_can_descend (struct archive*) ;
 scalar_t__ archive_read_disk_descend (struct archive*) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int,scalar_t__) ;
 int failure (char*) ;

__attribute__((used)) static int
metadata_filter(struct archive *a, void *data, struct archive_entry *ae)
{
 (void)data;

 failure("CTime should be set");
 assertEqualInt(8, archive_entry_ctime_is_set(ae));
 failure("MTime should be set");
 assertEqualInt(16, archive_entry_mtime_is_set(ae));

 if (archive_entry_mtime(ae) < 886611)
  return (0);
 if (archive_read_disk_can_descend(a)) {

  failure("archive_read_disk_can_descend should work"
   " in metadata filter");
  assertEqualIntA(a, 1, archive_read_disk_can_descend(a));
  failure("archive_read_disk_descend should work"
   " in metadata filter");
  assertEqualIntA(a, ARCHIVE_OK, archive_read_disk_descend(a));
 }
 return (1);
}
