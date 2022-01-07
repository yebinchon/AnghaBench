
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef int data ;


 int ARCHIVE_EXTRACT_TIME ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_set_mtime (struct archive_entry*,int,int ) ;
 int archive_entry_set_size (struct archive_entry*,int) ;
 int archive_write_data (struct archive*,char const*,int) ;
 struct archive* archive_write_disk_new () ;
 int archive_write_disk_set_options (struct archive*,int ) ;
 int archive_write_finish_entry (struct archive*) ;
 int archive_write_free (struct archive*) ;
 int archive_write_header (struct archive*,struct archive_entry*) ;
 int assert (int ) ;
 int assertEqualInt (int,int ) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int assertFileAtimeRecent (int ) ;
 int assertFileMtime (int ,int,int ) ;
 int assertFileSize (int ,int) ;
 int assertIsReg (int ,int) ;
 int failure (char*,...) ;

__attribute__((used)) static void create_reg_file(struct archive_entry *ae, const char *msg)
{
 static const char data[]="abcdefghijklmnopqrstuvwxyz";
 struct archive *ad;


 assert((ad = archive_write_disk_new()) != ((void*)0));
        archive_write_disk_set_options(ad, ARCHIVE_EXTRACT_TIME);
 failure("%s", msg);
 archive_entry_set_size(ae, sizeof(data));
 archive_entry_set_mtime(ae, 123456789, 0);
 assertEqualIntA(ad, 0, archive_write_header(ad, ae));
 assertEqualInt(sizeof(data), archive_write_data(ad, data, sizeof(data)));
 assertEqualIntA(ad, 0, archive_write_finish_entry(ad));
 assertEqualInt(0, archive_write_free(ad));


 assertIsReg(archive_entry_pathname(ae), archive_entry_mode(ae) & 0777);
 assertFileSize(archive_entry_pathname(ae), sizeof(data));

 assertFileMtime(archive_entry_pathname(ae), 123456789, 0);
        failure("No atime given, so atime should get set to current time");
 assertFileAtimeRecent(archive_entry_pathname(ae));
}
