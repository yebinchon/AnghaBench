
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int enabler ;


 int archive_read_disk_new ;
 int archive_read_free ;
 int archive_read_new ;
 int archive_write_disk_new ;
 int archive_write_free ;
 int archive_write_new ;
 int test_failure (int ,int ,int ) ;
 int test_success (int ,int ,int ) ;

__attribute__((used)) static void
test_filter_or_format(enabler enable)
{
 test_success(archive_read_new, enable, archive_read_free);
 test_failure(archive_write_new, enable, archive_write_free);
 test_failure(archive_read_disk_new, enable, archive_read_free);
 test_failure(archive_write_disk_new, enable, archive_write_free);
}
