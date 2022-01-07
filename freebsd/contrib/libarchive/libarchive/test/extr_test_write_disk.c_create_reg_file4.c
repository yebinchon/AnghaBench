
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; int st_mode; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef int data ;


 int ARCHIVE_OK ;
 int UMASK ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_write_data_block (struct archive*,char const*,int,int ) ;
 struct archive* archive_write_disk_new () ;
 int archive_write_finish_entry (struct archive*) ;
 int archive_write_free (struct archive*) ;
 int archive_write_header (struct archive*,struct archive_entry*) ;
 int assert (int) ;
 int assertEqualInt (int ,int) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int failure (char const*,...) ;
 scalar_t__ stat (int ,struct stat*) ;

__attribute__((used)) static void create_reg_file4(struct archive_entry *ae, const char *msg)
{
 static const char data[]="abcdefghijklmnopqrstuvwxyz";
 struct archive *ad;
 struct stat st;


 assert((ad = archive_write_disk_new()) != ((void*)0));

 assertEqualIntA(ad, 0, archive_write_header(ad, ae));
 assertEqualInt(ARCHIVE_OK,
     archive_write_data_block(ad, data, sizeof(data), 0));
 assertEqualIntA(ad, 0, archive_write_finish_entry(ad));
 assertEqualInt(0, archive_write_free(ad));


 assert(0 == stat(archive_entry_pathname(ae), &st));
 failure("st.st_mode=%o archive_entry_mode(ae)=%o",
     st.st_mode, archive_entry_mode(ae));

 assertEqualInt(st.st_mode, (archive_entry_mode(ae) & ~UMASK));

 failure(msg);
 assertEqualInt(st.st_size, sizeof(data));
}
