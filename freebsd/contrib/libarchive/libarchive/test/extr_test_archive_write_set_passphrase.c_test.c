
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FAILED ;
 int ARCHIVE_OK ;
 int __archive_write_get_passphrase (struct archive_write*) ;
 int archive_write_add_filter_gzip (struct archive*) ;
 int archive_write_free (struct archive*) ;
 struct archive* archive_write_new () ;
 int archive_write_set_format_iso9660 (struct archive*) ;
 int archive_write_set_passphrase (struct archive*,char*) ;
 int assertEqualInt (int ,int ) ;
 int assertEqualString (char*,int ) ;

__attribute__((used)) static void
test(int pristine)
{
 struct archive* a = archive_write_new();
 struct archive_write* aw = (struct archive_write *)a;

 if (!pristine) {
  archive_write_add_filter_gzip(a);
  archive_write_set_format_iso9660(a);
        }

 assertEqualInt(ARCHIVE_OK, archive_write_set_passphrase(a, "pass1"));

 assertEqualInt(ARCHIVE_FAILED, archive_write_set_passphrase(a, ""));

 assertEqualInt(ARCHIVE_FAILED, archive_write_set_passphrase(a, ((void*)0)));

 assertEqualString("pass1", __archive_write_get_passphrase(aw));

 assertEqualInt(ARCHIVE_OK, archive_write_set_passphrase(a, "pass2"));
 assertEqualString("pass2", __archive_write_get_passphrase(aw));

 archive_write_free(a);
}
