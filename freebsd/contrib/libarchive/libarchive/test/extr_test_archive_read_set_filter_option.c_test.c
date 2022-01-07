
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
 int should (struct archive*,int ,char*,char*,char*) ;

__attribute__((used)) static void
test(int pristine)
{
 struct archive* a = archive_read_new();

 if (!pristine)
  archive_read_support_filter_all(a);

 should(a, ARCHIVE_OK, ((void*)0), ((void*)0), ((void*)0));
 should(a, ARCHIVE_OK, "", "", "");

 should(a, ARCHIVE_FAILED, ((void*)0), "fubar", ((void*)0));
 should(a, ARCHIVE_FAILED, ((void*)0), "fubar", "snafu");
 should(a, ARCHIVE_FAILED, "fubar", "snafu", ((void*)0));
 should(a, ARCHIVE_FAILED, "fubar", "snafu", "betcha");

 archive_read_free(a);
}
