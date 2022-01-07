
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_OK ;
 int archive_errno (struct archive*) ;
 int archive_error_string (struct archive*) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_filename (struct archive*,char*,int ) ;
 int archive_read_support_format_empty (struct archive*) ;
 int archive_read_support_format_raw (struct archive*) ;
 int assertEqualInt (int ,int ) ;
 int assertEqualString (int *,int ) ;

__attribute__((used)) static void
test_empty_file2(void)
{
 struct archive* a = archive_read_new();
 struct archive_entry* e;


 assertEqualInt(ARCHIVE_OK, archive_read_support_format_raw(a));
 assertEqualInt(ARCHIVE_OK, archive_read_support_format_empty(a));
 assertEqualInt(0, archive_errno(a));
 assertEqualString(((void*)0), archive_error_string(a));

 assertEqualInt(ARCHIVE_OK, archive_read_open_filename(a, "emptyfile", 0));
 assertEqualInt(0, archive_errno(a));
 assertEqualString(((void*)0), archive_error_string(a));

 assertEqualInt(ARCHIVE_EOF, archive_read_next_header(a, &e));
 assertEqualInt(0, archive_errno(a));
 assertEqualString(((void*)0), archive_error_string(a));

 archive_read_free(a);
}
