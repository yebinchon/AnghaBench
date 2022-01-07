
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * closer; } ;
struct archive_read {TYPE_1__ client; } ;
struct archive {int dummy; } ;
typedef int archive_close_callback ;


 int ARCHIVE_OK ;
 int ARCHIVE_READ_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;

int
archive_read_set_close_callback(struct archive *_a,
    archive_close_callback *client_closer)
{
 struct archive_read *a = (struct archive_read *)_a;
 archive_check_magic(_a, ARCHIVE_READ_MAGIC, ARCHIVE_STATE_NEW,
     "archive_read_set_close_callback");
 a->client.closer = client_closer;
 return ARCHIVE_OK;
}
