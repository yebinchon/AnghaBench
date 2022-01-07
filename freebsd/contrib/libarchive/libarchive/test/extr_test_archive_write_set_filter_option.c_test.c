
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int ARCHIVE_FAILED ;
 int ARCHIVE_OK ;
 int archive_write_add_filter_gzip (struct archive*) ;
 int archive_write_free (struct archive*) ;
 struct archive* archive_write_new () ;
 int should (struct archive*,int ,char*,char*,char*) ;

__attribute__((used)) static void
test(int pristine)
{
 struct archive* a = archive_write_new();

 if (!pristine)
  archive_write_add_filter_gzip(a);

 should(a, ARCHIVE_OK, ((void*)0), ((void*)0), ((void*)0));
 should(a, ARCHIVE_OK, "", "", "");

 should(a, ARCHIVE_FAILED, ((void*)0), "fubar", ((void*)0));
 should(a, ARCHIVE_FAILED, ((void*)0), "fubar", "snafu");
 should(a, ARCHIVE_FAILED, "fubar", "snafu", ((void*)0));
 should(a, ARCHIVE_FAILED, "fubar", "snafu", "betcha");

 archive_write_free(a);
}
