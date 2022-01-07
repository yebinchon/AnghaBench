
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;


 int AE_IFDIR ;
 int archive_entry_filetype (struct archive_entry*) ;
 int archive_entry_gid (struct archive_entry*) ;
 int archive_entry_gname (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 int archive_entry_uid (struct archive_entry*) ;
 int archive_entry_uname (struct archive_entry*) ;
 int assertEqualInt (int,int) ;
 int assertEqualString (int ,char*) ;

__attribute__((used)) static void verify5(struct archive_entry *ae)
{
 assertEqualInt(archive_entry_filetype(ae), AE_IFDIR);
 assertEqualInt(archive_entry_mtime(ae), 1131430878);
 assertEqualInt(archive_entry_mode(ae) & 0777, 0755);
 assertEqualInt(archive_entry_uid(ae), 1000);
 assertEqualInt(archive_entry_gid(ae), 1000);
 assertEqualString(archive_entry_uname(ae), "tim");
 assertEqualString(archive_entry_gname(ae), "tim");
}
