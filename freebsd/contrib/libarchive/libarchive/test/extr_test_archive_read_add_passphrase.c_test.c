
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int ARCHIVE_FAILED ;
 int ARCHIVE_OK ;
 int archive_read_add_passphrase (struct archive*,char*) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_support_filter_all (struct archive*) ;
 int archive_read_support_format_all (struct archive*) ;
 int assertEqualInt (int ,int ) ;

__attribute__((used)) static void
test(int pristine)
{
 struct archive* a = archive_read_new();

 if (!pristine) {
  archive_read_support_filter_all(a);
  archive_read_support_format_all(a);
        }

 assertEqualInt(ARCHIVE_OK, archive_read_add_passphrase(a, "pass1"));

 assertEqualInt(ARCHIVE_FAILED, archive_read_add_passphrase(a, ""));

 assertEqualInt(ARCHIVE_FAILED, archive_read_add_passphrase(a, ((void*)0)));

 archive_read_free(a);
}
