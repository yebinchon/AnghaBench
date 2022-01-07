
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;
typedef scalar_t__ time_t ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef int FILE ;


 int AE_IFDIR ;
 int AE_IFREG ;
 int ARCHIVE_EOF ;
 scalar_t__ ARCHIVE_FORMAT_MTREE ;
 int ARCHIVE_OK ;
 int ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED ;
 int archive_entry_filetype (struct archive_entry*) ;
 int archive_entry_is_encrypted (struct archive_entry*) ;
 int archive_entry_mode (struct archive_entry*) ;
 int archive_entry_mtime (struct archive_entry*) ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_size (struct archive_entry*) ;
 int archive_entry_uid (struct archive_entry*) ;
 scalar_t__ archive_file_count (struct archive*) ;
 int archive_format (struct archive*) ;
 scalar_t__ archive_read_close (struct archive*) ;
 scalar_t__ archive_read_data (struct archive*,char*,int) ;
 scalar_t__ archive_read_free (struct archive*) ;
 int archive_read_has_encrypted_entries (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_filename (struct archive*,char const*,int) ;
 int archive_read_set_options (struct archive*,char*) ;
 int archive_read_support_filter_all (struct archive*) ;
 int archive_read_support_format_all (struct archive*) ;
 int assert (int) ;
 int assertEqualInt (int,long long const) ;
 int assertEqualIntA (struct archive*,int,int ) ;
 int assertEqualMem (char*,char*,int) ;
 int assertEqualString (int ,char*) ;
 int assertMakeDir (char*,int) ;
 int extract_reference_file (char const*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ fwrite (char*,int,int,int *) ;

__attribute__((used)) static void
test_read_format_mtree1(void)
{
 const char reffile[] = "test_read_format_mtree.mtree";
 char buff[16];
 struct archive_entry *ae;
 struct archive *a;
 FILE *f;



 static const long long max_int64 = ((((long long)1) << 62) - 1) + (((long long)1) << 62);
 time_t min_time;
 volatile time_t t;

 extract_reference_file(reffile);







 assertMakeDir("dir", 0775);
 assertMakeDir("dir2", 0775);

 assert((a = archive_read_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_support_filter_all(a));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_support_format_all(a));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_set_options(a, "mtree:checkfs"));
 assertEqualIntA(a, ARCHIVE_OK,
     archive_read_open_filename(a, reffile, 11));




 f = fopen("file", "wb");
 assert(f != ((void*)0));
 assertEqualInt(3, fwrite("hi\n", 1, 3, f));
 fclose(f);
 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualInt(archive_format(a), ARCHIVE_FORMAT_MTREE);
 assertEqualString(archive_entry_pathname(ae), "file");
 assertEqualInt(archive_entry_uid(ae), 18);
 assertEqualInt(AE_IFREG, archive_entry_filetype(ae));
 assertEqualInt(archive_entry_mode(ae), AE_IFREG | 0123);
 assertEqualInt(archive_entry_size(ae), 3);
 assertEqualInt(3, archive_read_data(a, buff, 3));
 assertEqualMem(buff, "hi\n", 3);
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString(archive_entry_pathname(ae), "dir");
 assertEqualInt(AE_IFDIR, archive_entry_filetype(ae));
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString(archive_entry_pathname(ae), "dir/file with space");
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString(archive_entry_pathname(ae), "file with space");
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString(archive_entry_pathname(ae), "dir2");
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString(archive_entry_pathname(ae), "dir2/dir3a");
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString(archive_entry_pathname(ae), "dir2/dir3a/indir3a");
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString(archive_entry_pathname(ae), "dir2/fullindir2");
 assertEqualInt(archive_entry_mode(ae), AE_IFREG | 0644);
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString(archive_entry_pathname(ae), "dir2/indir2");
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString(archive_entry_pathname(ae), "dir2/dir3b");
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString(archive_entry_pathname(ae), "dir2/dir3b/indir3b");
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString(archive_entry_pathname(ae), "dir2/dir3b/filename\\with_esc\b\t\fapes");
 assertEqualInt(archive_entry_filetype(ae), AE_IFREG);
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString(archive_entry_pathname(ae), "notindir");
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString(archive_entry_pathname(ae), "dir2/emptyfile");
 assertEqualInt(archive_entry_size(ae), 0);
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString(archive_entry_pathname(ae), "dir2/smallfile");
 assertEqualInt(archive_entry_size(ae), 1);
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);


 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString(archive_entry_pathname(ae), "dir2/toosmallfile");
 assertEqualInt(archive_entry_size(ae), -1);
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString(archive_entry_pathname(ae), "dir2/bigfile");
 assertEqualInt(archive_entry_size(ae), max_int64);
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString(archive_entry_pathname(ae), "dir2/toobigfile");

 assertEqualInt(archive_entry_size(ae), max_int64);
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString(archive_entry_pathname(ae), "dir2/veryoldfile");


 min_time = archive_entry_mtime(ae);
 assert(min_time <= 0);

 t = (time_t)((uintmax_t)min_time - 1);
 assert(t > 0);
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);



 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualString(archive_entry_pathname(ae), "dir2/toooldfile");
 assertEqualInt(archive_entry_mtime(ae), min_time);
 assertEqualInt(archive_entry_is_encrypted(ae), 0);
 assertEqualIntA(a, archive_read_has_encrypted_entries(a), ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED);

 assertEqualIntA(a, ARCHIVE_EOF, archive_read_next_header(a, &ae));
 assertEqualInt(20, archive_file_count(a));
 assertEqualInt(ARCHIVE_OK, archive_read_close(a));
 assertEqualInt(ARCHIVE_OK, archive_read_free(a));
}
