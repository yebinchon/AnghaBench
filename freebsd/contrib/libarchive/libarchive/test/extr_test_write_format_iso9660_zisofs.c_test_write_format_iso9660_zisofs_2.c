
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef int data ;


 int ARCHIVE_EOF ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int S_IFDIR ;
 int S_IFREG ;
 int archive_entry_atime (struct archive_entry*) ;
 int archive_entry_copy_pathname (struct archive_entry*,char*) ;
 int archive_entry_ctime (struct archive_entry*) ;
 int archive_entry_free (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_set_atime (struct archive_entry*,int,int) ;
 int archive_entry_set_birthtime (struct archive_entry*,int,int) ;
 int archive_entry_set_ctime (struct archive_entry*,int,int) ;
 int archive_entry_set_mode (struct archive_entry*,int) ;
 int archive_entry_set_mtime (struct archive_entry*,int,int) ;
 int archive_entry_set_size (struct archive_entry*,int) ;
 int archive_entry_size (struct archive_entry*) ;
 int archive_read_close (struct archive*) ;
 int archive_read_data (struct archive*,unsigned char*,int) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_memory (struct archive*,unsigned char*,size_t) ;
 int archive_read_support_filter_all (struct archive*) ;
 int archive_read_support_format_all (struct archive*) ;
 int archive_write_add_filter_none (struct archive*) ;
 int archive_write_close (struct archive*) ;
 int archive_write_data (struct archive*,unsigned char*,int) ;
 int archive_write_free (struct archive*) ;
 int archive_write_header (struct archive*,struct archive_entry*) ;
 struct archive* archive_write_new () ;
 int archive_write_open_memory (struct archive*,unsigned char*,size_t,size_t*) ;
 int archive_write_set_format_iso9660 (struct archive*) ;
 int archive_write_set_option (struct archive*,int *,char*,char*) ;
 int assert (int) ;
 int assertEqualInt (int,int) ;
 int assertEqualIntA (struct archive*,int,int) ;
 int assertEqualMem (unsigned char*,...) ;
 int assertEqualString (char*,int ) ;
 int failure (char*) ;
 int free (unsigned char*) ;
 unsigned char* malloc (size_t) ;
 int memset (unsigned char*,char,int) ;
 unsigned char* primary_id ;
 int skipping (char*) ;
 unsigned char* supplementary_id ;
 unsigned char* terminator_id ;
 unsigned char* volumeidu16 ;
 unsigned char* volumesize2 ;
 unsigned char* zisofs_data ;
 unsigned char* zisofs_magic ;

__attribute__((used)) static void
test_write_format_iso9660_zisofs_2(void)
{
 unsigned char buff2[1024];
 unsigned char data[1024];
 struct archive *a;
 struct archive_entry *ae;
 unsigned char *buff;
 size_t buffsize = 60 * 2048;
 size_t used;
 unsigned int i;
 int r;

 buff = malloc(buffsize);
 assert(buff != ((void*)0));
 if (buff == ((void*)0))
  return;


 assert((a = archive_write_new()) != ((void*)0));
 assertEqualIntA(a, 0, archive_write_set_format_iso9660(a));
 assertEqualIntA(a, 0, archive_write_add_filter_none(a));
 r = archive_write_set_option(a, ((void*)0), "zisofs", "1");
 if (r == ARCHIVE_FATAL) {
  skipping("zisofs option not supported on this platform");
  assertEqualInt(ARCHIVE_OK, archive_write_free(a));
  free(buff);
  return;
 }
 assertEqualIntA(a, 0, archive_write_set_option(a, ((void*)0), "pad", ((void*)0)));
 assertEqualIntA(a, 0, archive_write_open_memory(a, buff, buffsize, &used));




 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_set_atime(ae, 2, 20);
 archive_entry_set_birthtime(ae, 3, 30);
 archive_entry_set_ctime(ae, 4, 40);
 archive_entry_set_mtime(ae, 5, 50);
 archive_entry_copy_pathname(ae, "file1");
 archive_entry_set_mode(ae, S_IFREG | 0755);
 archive_entry_set_size(ae, 256*1024);
 assertEqualIntA(a, ARCHIVE_OK, archive_write_header(a, ae));
 archive_entry_free(ae);
 for (i = 0; i < 256; i++) {
  int j;
  if (i == 0) {
   for (j = 0; j < (int)sizeof(data); j++)
    data[j] = (i^j) & 0xff;
  } else {
   for (j = 0; j < (int)sizeof(data); j++)
    data[j] ^= i+j;
  }
  assertEqualIntA(a, 1024, archive_write_data(a, data, 1024));
 }




 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_set_atime(ae, 2, 20);
 archive_entry_set_birthtime(ae, 3, 30);
 archive_entry_set_ctime(ae, 4, 40);
 archive_entry_set_mtime(ae, 5, 50);
 archive_entry_copy_pathname(ae, "file2");
 archive_entry_set_mode(ae, S_IFREG | 0755);
 archive_entry_set_size(ae, 2048);
 assertEqualIntA(a, ARCHIVE_OK, archive_write_header(a, ae));
 archive_entry_free(ae);
 memset(data, 'a', sizeof(data));
 assertEqualIntA(a, 1024, archive_write_data(a, data, 1024));
 memset(data, 'b', sizeof(data));
 assertEqualIntA(a, 1024, archive_write_data(a, data, 1024));





 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_set_atime(ae, 2, 20);
 archive_entry_set_birthtime(ae, 3, 30);
 archive_entry_set_ctime(ae, 4, 40);
 archive_entry_set_mtime(ae, 5, 50);
 archive_entry_copy_pathname(ae, "file3");
 archive_entry_set_mode(ae, S_IFREG | 0755);
 archive_entry_set_size(ae, 2049);
 assertEqualIntA(a, ARCHIVE_OK, archive_write_header(a, ae));
 archive_entry_free(ae);
 memset(data, 'Z', sizeof(data));
 assertEqualIntA(a, 1024, archive_write_data(a, data, 1024));





 assert((ae = archive_entry_new()) != ((void*)0));
 archive_entry_set_atime(ae, 2, 20);
 archive_entry_set_birthtime(ae, 3, 30);
 archive_entry_set_ctime(ae, 4, 40);
 archive_entry_set_mtime(ae, 5, 50);
 archive_entry_copy_pathname(ae, "file4");
 archive_entry_set_mode(ae, S_IFREG | 0755);
 archive_entry_set_size(ae, 24);
 assertEqualIntA(a, ARCHIVE_OK, archive_write_header(a, ae));
 archive_entry_free(ae);
 assertEqualIntA(a, 24, archive_write_data(a, zisofs_data, 24));


 assertEqualIntA(a, ARCHIVE_OK, archive_write_close(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_write_free(a));

 failure("The ISO image size should be 110592 bytes.");
 assertEqualInt(used, 2048 * 54);


 for (i = 0; i < 2048 * 16; i++) {
  failure("System Area should be all nulls.");
  assertEqualInt(buff[i], 0);
 }


 failure("Primary Volume Descriptor should be in 16 Logical Sector.");
 assertEqualMem(buff+2048*16, primary_id, 8);
 assertEqualMem(buff+2048*16+0x28,
     "CDROM                           ", 32);
 assertEqualMem(buff+2048*16+0x50, volumesize2, 8);


 failure("Supplementary Volume(Joliet) Descriptor "
     "should be in 17 Logical Sector.");
 assertEqualMem(buff+2048*17, supplementary_id, 8);
 assertEqualMem(buff+2048*17+0x28, volumeidu16, 32);
 assertEqualMem(buff+2048*17+0x50, volumesize2, 8);
 failure("Date and Time of Primary Volume and "
     "Date and Time of Supplementary Volume "
     "must be the same.");
 assertEqualMem(buff+2048*16+0x32d, buff+2048*17+0x32d, 0x44);


 failure("Volume Descriptor Set Terminator "
     "should be in 18 Logical Sector.");
 assertEqualMem(buff+2048*18, terminator_id, 8);
 for (i = 8; i < 2048; i++) {
  failure("Body of Volume Descriptor Set Terminator "
      "should be all nulls.");
  assertEqualInt(buff[2048*18+i], 0);
 }


 failure("file1 image should be zisofs'ed.");
 assertEqualMem(buff+2048*31, zisofs_magic, 8);

 memset(data, 'a', sizeof(data));
 failure("file2 image should not be zisofs'ed.");
 assertEqualMem(buff+2048*51, data, 1024);
 memset(data, 'b', sizeof(data));
 failure("file2 image should not be zisofs'ed.");
 assertEqualMem(buff+2048*51+1024, data, 1024);

 failure("file3 image should be zisofs'ed.");
 assertEqualMem(buff+2048*52, zisofs_magic, 8);

 failure("file4 image should be zisofs'ed.");
 assertEqualMem(buff+2048*53, zisofs_magic, 8);




 assert((a = archive_read_new()) != ((void*)0));
 assertEqualIntA(a, 0, archive_read_support_format_all(a));
 assertEqualIntA(a, 0, archive_read_support_filter_all(a));
 assertEqualIntA(a, 0, archive_read_open_memory(a, buff, used));





 assertEqualIntA(a, 0, archive_read_next_header(a, &ae));
 assertEqualInt(archive_entry_atime(ae), archive_entry_ctime(ae));
 assertEqualInt(archive_entry_atime(ae), archive_entry_mtime(ae));
 assertEqualString(".", archive_entry_pathname(ae));
 assert((S_IFDIR | 0555) == archive_entry_mode(ae));
 assertEqualInt(2048, archive_entry_size(ae));




 assertEqualIntA(a, 0, archive_read_next_header(a, &ae));
 assertEqualInt(2, archive_entry_atime(ae));
 assertEqualInt(4, archive_entry_ctime(ae));
 assertEqualInt(5, archive_entry_mtime(ae));
 assertEqualString("file1", archive_entry_pathname(ae));
 assert((S_IFREG | 0555) == archive_entry_mode(ae));
 assertEqualInt(256*1024, archive_entry_size(ae));
 assertEqualIntA(a, 1024, archive_read_data(a, buff2, 1024));




 assertEqualIntA(a, 0, archive_read_next_header(a, &ae));
 assertEqualInt(2, archive_entry_atime(ae));
 assertEqualInt(4, archive_entry_ctime(ae));
 assertEqualInt(5, archive_entry_mtime(ae));
 assertEqualString("file2", archive_entry_pathname(ae));
 assert((S_IFREG | 0555) == archive_entry_mode(ae));
 assertEqualInt(2048, archive_entry_size(ae));
 assertEqualIntA(a, 1024, archive_read_data(a, buff2, 1024));
 memset(data, 'a', sizeof(data));
 assertEqualMem(buff2, data, 1024);




 assertEqualIntA(a, 0, archive_read_next_header(a, &ae));
 assertEqualInt(2, archive_entry_atime(ae));
 assertEqualInt(4, archive_entry_ctime(ae));
 assertEqualInt(5, archive_entry_mtime(ae));
 assertEqualString("file3", archive_entry_pathname(ae));
 assert((S_IFREG | 0555) == archive_entry_mode(ae));
 assertEqualInt(2049, archive_entry_size(ae));
 assertEqualIntA(a, 1024, archive_read_data(a, buff2, 1024));
 memset(data, 'Z', sizeof(data));
 assertEqualMem(buff2, data, 1024);




 assertEqualIntA(a, 0, archive_read_next_header(a, &ae));
 assertEqualInt(2, archive_entry_atime(ae));
 assertEqualInt(4, archive_entry_ctime(ae));
 assertEqualInt(5, archive_entry_mtime(ae));
 assertEqualString("file4", archive_entry_pathname(ae));
 assert((S_IFREG | 0555) == archive_entry_mode(ae));
 assertEqualInt(32768, archive_entry_size(ae));
 assertEqualIntA(a, 1024, archive_read_data(a, buff2, 1024));
 memset(data, 0, sizeof(data));
 assertEqualMem(buff2, data, 1024);




 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header(a, &ae));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_close(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_free(a));

 free(buff);
}
