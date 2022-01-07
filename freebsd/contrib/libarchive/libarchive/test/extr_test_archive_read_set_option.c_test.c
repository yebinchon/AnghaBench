
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int ARCHIVE_FAILED ;
 int ARCHIVE_OK ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_support_filter_all (struct archive*) ;
 int archive_read_support_format_all (struct archive*) ;
 int should (struct archive*,int,char*,char*,char*) ;

__attribute__((used)) static void
test(int pristine)
{
 struct archive* a = archive_read_new();
 int known_option_rv = pristine ? ARCHIVE_FAILED : ARCHIVE_OK;

 if (!pristine) {
  archive_read_support_filter_all(a);
  archive_read_support_format_all(a);
        }



 should(a, ARCHIVE_OK, ((void*)0), ((void*)0), ((void*)0));
 should(a, ARCHIVE_OK, "", "", "");


 should(a, ARCHIVE_FAILED, "fubar", "snafu", ((void*)0));
 should(a, ARCHIVE_FAILED, "fubar", "snafu", "betcha");


 should(a, ARCHIVE_FAILED, ((void*)0), "snafu", ((void*)0));
 should(a, ARCHIVE_FAILED, ((void*)0), "snafu", "betcha");


 should(a, known_option_rv, "iso9660", "joliet", ((void*)0));
 should(a, known_option_rv, "iso9660", "joliet", ((void*)0));
 should(a, known_option_rv, ((void*)0), "joliet", ((void*)0));
 should(a, known_option_rv, ((void*)0), "joliet", ((void*)0));

 archive_read_free(a);
}
