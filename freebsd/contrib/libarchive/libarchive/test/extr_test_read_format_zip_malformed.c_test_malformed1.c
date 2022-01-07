
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_filename (struct archive*,char const*,int) ;
 int archive_read_support_filter_all (struct archive*) ;
 int archive_read_support_format_all (struct archive*) ;
 int assert (int ) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int extract_reference_file (char const*) ;
 int free (char*) ;
 int read_open_memory (struct archive*,char*,size_t,int) ;
 char* slurpfile (size_t*,char const*) ;

__attribute__((used)) static void
test_malformed1(void)
{
 const char *refname = "test_read_format_zip_malformed1.zip";
 struct archive *a;
 struct archive_entry *ae;
 char *p;
 size_t s;

 extract_reference_file(refname);


 assert((a = archive_read_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_filter_all(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_format_all(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_open_filename(a, refname, 10240));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_free(a));


 p = slurpfile(&s, refname);
 assert((a = archive_read_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_filter_all(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_format_all(a));
 assertEqualIntA(a, ARCHIVE_OK, read_open_memory(a, p, s, 31));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_next_header(a, &ae));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_free(a));
 free(p);
}
