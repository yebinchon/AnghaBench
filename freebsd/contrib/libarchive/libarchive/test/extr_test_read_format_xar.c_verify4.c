
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int AE_IFBLK ;
 int GID ;
 char* GNAME ;
 int UID ;
 char* UNAME ;
 int archive_entry_filetype (struct archive_entry*) ;
 int archive_entry_gid (struct archive_entry*) ;
 int archive_entry_gname (struct archive_entry*) ;
 int * archive_entry_hardlink (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int * archive_entry_symlink (struct archive_entry*) ;
 int archive_entry_uid (struct archive_entry*) ;
 int archive_entry_uname (struct archive_entry*) ;
 int assert (int ) ;
 int assertEqualInt (int,int) ;
 int assertEqualString (int ,char*) ;

__attribute__((used)) static void verify4(struct archive *a, struct archive_entry *ae)
{
 (void)a;
 assertEqualInt(archive_entry_filetype(ae), AE_IFBLK);
 assertEqualInt(archive_entry_mode(ae) & 0777, 0644);
 assertEqualInt(archive_entry_uid(ae), UID);
 assertEqualInt(archive_entry_gid(ae), GID);
 assertEqualString(archive_entry_uname(ae), UNAME);
 assertEqualString(archive_entry_gname(ae), GNAME);
 assertEqualString(archive_entry_pathname(ae), "devblock");
 assert(archive_entry_symlink(ae) == ((void*)0));
 assert(archive_entry_hardlink(ae) == ((void*)0));
 assertEqualInt(archive_entry_mtime(ae), 86401);
}
