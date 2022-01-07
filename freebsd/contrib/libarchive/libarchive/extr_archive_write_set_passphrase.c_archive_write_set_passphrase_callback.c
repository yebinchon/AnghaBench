
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {void* passphrase_client_data; int * passphrase_callback; } ;
struct archive {int dummy; } ;
typedef int archive_passphrase_callback ;


 int ARCHIVE_OK ;
 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WRITE_MAGIC ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;

int
archive_write_set_passphrase_callback(struct archive *_a, void *client_data,
    archive_passphrase_callback *cb)
{
 struct archive_write *a = (struct archive_write *)_a;

 archive_check_magic(_a, ARCHIVE_WRITE_MAGIC, ARCHIVE_STATE_NEW,
  "archive_write_set_passphrase_callback");

 a->passphrase_callback = cb;
 a->passphrase_client_data = client_data;
 return (ARCHIVE_OK);
}
