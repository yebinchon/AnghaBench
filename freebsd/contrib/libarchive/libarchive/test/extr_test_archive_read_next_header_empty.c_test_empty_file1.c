
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int archive_errno (struct archive*) ;
 int * archive_error_string (struct archive*) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_open_filename (struct archive*,char*,int ) ;
 int archive_read_support_format_raw (struct archive*) ;
 int assert (int) ;
 int assertEqualInt (int ,int ) ;
 int assertEqualString (int *,int *) ;

__attribute__((used)) static void
test_empty_file1(void)
{
 struct archive* a = archive_read_new();


 assertEqualInt(ARCHIVE_OK, archive_read_support_format_raw(a));
 assertEqualInt(0, archive_errno(a));
 assertEqualString(((void*)0), archive_error_string(a));


 assertEqualInt(ARCHIVE_FATAL, archive_read_open_filename(a, "emptyfile", 0));
 assert(((void*)0) != archive_error_string(a));

 archive_read_free(a);
}
