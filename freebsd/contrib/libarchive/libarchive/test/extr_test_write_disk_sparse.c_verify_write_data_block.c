
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {size_t st_size; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef int data ;
typedef int FILE ;


 int AE_IFREG ;
 size_t ARCHIVE_OK ;
 int archive_entry_free (struct archive_entry*) ;
 struct archive_entry* archive_entry_new () ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_set_mode (struct archive_entry*,int) ;
 int archive_entry_set_pathname (struct archive_entry*,char*) ;
 int archive_entry_set_size (struct archive_entry*,int) ;
 char archive_write_data_block (struct archive*,char*,size_t,size_t) ;
 int archive_write_finish_entry (struct archive*) ;
 int archive_write_header (struct archive*,struct archive_entry*) ;
 int assert (int) ;
 int assertEqualInt (size_t,char) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int assertEqualMem (char*,char const*,int) ;
 int failure (char*,...) ;
 char fclose (int *) ;
 int * fopen (int ,char*) ;
 char fread (char*,int,size_t,int *) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,int) ;
 int memset (char*,int ,size_t) ;
 scalar_t__ stat (int ,struct stat*) ;

__attribute__((used)) static void
verify_write_data_block(struct archive *a, int sparse)
{
 static const char data[]="abcdefghijklmnopqrstuvwxyz";
 struct stat st;
 struct archive_entry *ae;
 size_t buff_size = 64 * 1024;
 char *buff, *p;
 const char *msg = sparse ? "sparse" : "non-sparse";
 FILE *f;

 buff = malloc(buff_size);
 assert(buff != ((void*)0));
 if (buff == ((void*)0))
  return;

 ae = archive_entry_new();
 assert(ae != ((void*)0));
 archive_entry_set_size(ae, 8 * buff_size);
 archive_entry_set_pathname(ae, "test_write_data_block");
 archive_entry_set_mode(ae, AE_IFREG | 0755);
 assertEqualIntA(a, 0, archive_write_header(a, ae));





 memset(buff, 0, buff_size);
 memcpy(buff, data, sizeof(data));
 failure("%s", msg);
 assertEqualInt(ARCHIVE_OK,
     archive_write_data_block(a, buff, buff_size, 100));


 memset(buff, 0, buff_size);
 memcpy(buff + buff_size / 2 - 3, data, sizeof(data));
 failure("%s", msg);
 assertEqualInt(ARCHIVE_OK,
     archive_write_data_block(a, buff, buff_size, buff_size + 200));


 memset(buff, 0, buff_size);
 memcpy(buff + buff_size - sizeof(data), data, sizeof(data));
 failure("%s", msg);
 assertEqualInt(ARCHIVE_OK,
     archive_write_data_block(a, buff, buff_size, buff_size * 2 + 300));

 failure("%s", msg);
 assertEqualIntA(a, 0, archive_write_finish_entry(a));


 assert(0 == stat(archive_entry_pathname(ae), &st));
        assertEqualInt(st.st_size, 8 * buff_size);
 f = fopen(archive_entry_pathname(ae), "rb");
 assert(f != ((void*)0));
 if (f == ((void*)0)) {
  free(buff);
  return;
 }


 assertEqualInt(100, fread(buff, 1, 100, f));
 failure("%s", msg);
 for (p = buff; p < buff + 100; ++p) {
  failure("offset: %d, %s", (int)(p - buff), msg);
  if (!assertEqualInt(0, *p))
   break;
 }


 assertEqualInt(buff_size, fread(buff, 1, buff_size, f));
 failure("%s", msg);
 assertEqualMem(buff, data, sizeof(data));
 for (p = buff + sizeof(data); p < buff + buff_size; ++p) {
  failure("offset: %d, %s", (int)(p - buff), msg);
  if (!assertEqualInt(0, *p))
   break;
 }


 assertEqualInt(100, fread(buff, 1, 100, f));
 failure("%s", msg);
 for (p = buff; p < buff + 100; ++p) {
  failure("offset: %d, %s", (int)(p - buff), msg);
  if (!assertEqualInt(0, *p))
   break;
 }


 assertEqualInt(buff_size, fread(buff, 1, buff_size, f));
 for (p = buff; p < buff + buff_size; ++p) {
  failure("offset: %d, %s", (int)(p - buff), msg);
  if (p == buff + buff_size / 2 - 3) {
   assertEqualMem(p, data, sizeof(data));
   p += sizeof(data);
  } else if (!assertEqualInt(0, *p))
   break;
 }


 assertEqualInt(100, fread(buff, 1, 100, f));
 failure("%s", msg);
 for (p = buff; p < buff + 100; ++p) {
  failure("offset: %d, %s", (int)(p - buff), msg);
  if (!assertEqualInt(0, *p))
   break;
 }


 assertEqualInt(buff_size, fread(buff, 1, buff_size, f));
 for (p = buff; p < buff + buff_size - sizeof(data); ++p) {
  failure("offset: %d, %s", (int)(p - buff), msg);
  if (!assertEqualInt(0, *p))
   break;
 }
 failure("%s", msg);
 assertEqualMem(buff + buff_size - sizeof(data), data, sizeof(data));


 assertEqualInt(buff_size, fread(buff, 1, buff_size, f));
 failure("%s", msg);
 for (p = buff; p < buff + buff_size; ++p) {
  failure("offset: %d, %s", (int)(p - buff), msg);
  if (!assertEqualInt(0, *p))
   break;
 }




 assertEqualInt(0, fclose(f));
 free(buff);
 archive_entry_free(ae);
}
