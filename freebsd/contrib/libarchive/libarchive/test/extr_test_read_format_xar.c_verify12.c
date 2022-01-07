
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int archive_entry_atime (struct archive_entry*) ;
 int archive_entry_atime_is_set (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 int archive_entry_mtime_is_set (struct archive_entry*) ;
 int assertEqualInt (int ,int ) ;

__attribute__((used)) static void verify12(struct archive *a, struct archive_entry *ae)
{
 (void)a;
        assertEqualInt(archive_entry_mtime_is_set(ae), 0);
        assertEqualInt(archive_entry_atime_is_set(ae), 0);
 assertEqualInt(archive_entry_mtime(ae), 0);
 assertEqualInt(archive_entry_atime(ae), 0);
}
