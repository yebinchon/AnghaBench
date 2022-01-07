
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 struct archive* archive_read_new () ;
 int archive_read_open_filename (struct archive*,char const*,int) ;
 int archive_read_support_filter_all (struct archive*) ;
 int archive_read_support_format_all (struct archive*) ;
 int assert (int ) ;
 int assertEqualIntA (struct archive*,int ,int ) ;
 int extract_reference_file (char const*) ;
 int free (char*) ;
 int read_open_memory (struct archive*,char*,size_t,int) ;
 char* slurpfile (size_t*,char const*) ;
 int verify_info_zip_ux (struct archive*,int) ;

__attribute__((used)) static void
test_info_zip_ux(void)
{
 const char *refname = "test_read_format_zip_ux.zip";
 struct archive *a;
 char *p;
 size_t s;

 extract_reference_file(refname);


 assert((a = archive_read_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_filter_all(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_format_all(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_open_filename(a, refname, 10240));
 verify_info_zip_ux(a, 1);


 p = slurpfile(&s, refname);
 assert((a = archive_read_new()) != ((void*)0));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_filter_all(a));
 assertEqualIntA(a, ARCHIVE_OK, archive_read_support_format_all(a));
 assertEqualIntA(a, ARCHIVE_OK, read_open_memory(a, p, s, 108));
 verify_info_zip_ux(a, 0);
 free(p);
}
