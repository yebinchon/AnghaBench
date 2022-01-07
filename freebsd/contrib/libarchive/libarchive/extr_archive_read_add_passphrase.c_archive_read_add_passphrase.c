
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_passphrase {int dummy; } ;
struct archive_read {int archive; } ;
struct archive {int dummy; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_READ_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int add_passphrase_to_tail (struct archive_read*,struct archive_read_passphrase*) ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_set_error (int *,int ,char*) ;
 struct archive_read_passphrase* new_read_passphrase (struct archive_read*,char const*) ;

int
archive_read_add_passphrase(struct archive *_a, const char *passphrase)
{
 struct archive_read *a = (struct archive_read *)_a;
 struct archive_read_passphrase *p;

 archive_check_magic(_a, ARCHIVE_READ_MAGIC, ARCHIVE_STATE_NEW,
  "archive_read_add_passphrase");

 if (passphrase == ((void*)0) || passphrase[0] == '\0') {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Empty passphrase is unacceptable");
  return (ARCHIVE_FAILED);
 }

 p = new_read_passphrase(a, passphrase);
 if (p == ((void*)0))
  return (ARCHIVE_FATAL);
 add_passphrase_to_tail(a, p);

 return (ARCHIVE_OK);
}
