
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;


 scalar_t__ AE_IFDIR ;
 scalar_t__ AE_IFLNK ;
 scalar_t__ archive_entry_filetype (struct archive_entry*) ;
 int archive_entry_gid (struct archive_entry*) ;
 int archive_entry_gname (struct archive_entry*) ;
 int archive_entry_hardlink (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int * archive_entry_symlink (struct archive_entry*) ;
 int archive_entry_uid (struct archive_entry*) ;
 int archive_entry_uname (struct archive_entry*) ;
 int assert (int) ;
 int assertEqualInt (int,int) ;
 int assertEqualString (int ,char*) ;

__attribute__((used)) static void verify1(struct archive_entry *ae)
{

 assert(archive_entry_filetype(ae) != AE_IFLNK);

 assert(archive_entry_filetype(ae) != AE_IFDIR);
 assertEqualInt(archive_entry_mode(ae) & 0777, 0644);
 assertEqualInt(archive_entry_uid(ae), 1000);
 assertEqualInt(archive_entry_gid(ae), 1000);
 assertEqualString(archive_entry_uname(ae), "tim");
 assertEqualString(archive_entry_gname(ae), "tim");
 assertEqualString(archive_entry_pathname(ae), "hardlink");
 assertEqualString(archive_entry_hardlink(ae), "file");
 assert(archive_entry_symlink(ae) == ((void*)0));
 assertEqualInt(archive_entry_mtime(ae), 1184388530);
}
