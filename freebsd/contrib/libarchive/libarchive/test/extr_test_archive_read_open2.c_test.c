
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;
typedef int archive_skip_callback ;
typedef int archive_read_callback ;
typedef int archive_open_callback ;
typedef int archive_close_callback ;


 int ARCHIVE_OK ;
 int archive_error_string (struct archive*) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_open2 (struct archive*,int *,int *,int *,int *,int *) ;
 int archive_read_support_format_empty (struct archive*) ;
 int assertEqualInt (int,int ) ;
 int assertEqualString (char const*,int ) ;

__attribute__((used)) static void
test(int formatted, archive_open_callback *o, archive_read_callback *r,
    archive_skip_callback *s, archive_close_callback *c,
    int rv, const char *msg)
{
 struct archive* a = archive_read_new();
 if (formatted)
     assertEqualInt(ARCHIVE_OK,
  archive_read_support_format_empty(a));
 assertEqualInt(rv,
     archive_read_open2(a, ((void*)0), o, r, s, c));
 assertEqualString(msg, archive_error_string(a));
 archive_read_free(a);
}
