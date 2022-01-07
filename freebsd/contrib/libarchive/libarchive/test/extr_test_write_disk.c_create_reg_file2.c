
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_set_size (struct archive_entry*,int const) ;
 int archive_write_data_block (struct archive*,char*,int,int) ;
 struct archive* archive_write_disk_new () ;
 int archive_write_finish_entry (struct archive*) ;
 int archive_write_free (struct archive*) ;
 int archive_write_header (struct archive*,struct archive_entry*) ;
 int assert (int ) ;
 int assertEqualInt (int ,int ) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int assertFileContents (char*,int const,int ) ;
 int assertFileSize (int ,int) ;
 int assertIsReg (int ,int) ;
 int failure (char*,char const*) ;
 int free (char*) ;
 char* malloc (int const) ;

__attribute__((used)) static void create_reg_file2(struct archive_entry *ae, const char *msg)
{
 const int datasize = 100000;
 char *data;
 struct archive *ad;
 int i;

 data = malloc(datasize);
 for (i = 0; i < datasize; i++)
  data[i] = (char)(i % 256);


 assert((ad = archive_write_disk_new()) != ((void*)0));
 failure("%s", msg);




 archive_entry_set_size(ae, datasize);
 assertEqualIntA(ad, 0, archive_write_header(ad, ae));
 for (i = 0; i < datasize - 999; i += 1000) {
  assertEqualIntA(ad, ARCHIVE_OK,
      archive_write_data_block(ad, data + i, 1000, i));
 }
 assertEqualIntA(ad, 0, archive_write_finish_entry(ad));
 assertEqualInt(0, archive_write_free(ad));


 assertIsReg(archive_entry_pathname(ae), archive_entry_mode(ae) & 0777);
 assertFileSize(archive_entry_pathname(ae), i);
 assertFileContents(data, datasize, archive_entry_pathname(ae));
 free(data);
}
