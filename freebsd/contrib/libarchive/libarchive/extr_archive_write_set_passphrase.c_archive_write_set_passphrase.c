
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {int archive; int * passphrase; } ;
struct archive {int dummy; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FAILED ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WRITE_MAGIC ;
 int ENOMEM ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_set_error (int *,int ,char*) ;
 int free (int *) ;
 int * strdup (char const*) ;

int
archive_write_set_passphrase(struct archive *_a, const char *p)
{
 struct archive_write *a = (struct archive_write *)_a;

 archive_check_magic(_a, ARCHIVE_WRITE_MAGIC, ARCHIVE_STATE_NEW,
  "archive_write_set_passphrase");

 if (p == ((void*)0) || p[0] == '\0') {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Empty passphrase is unacceptable");
  return (ARCHIVE_FAILED);
 }
 free(a->passphrase);
 a->passphrase = strdup(p);
 if (a->passphrase == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate data for passphrase");
  return (ARCHIVE_FATAL);
 }
 return (ARCHIVE_OK);
}
