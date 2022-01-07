
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_disk {void (* excluded_cb_func ) (struct archive*,void*,struct archive_entry*) ;void* excluded_cb_data; struct archive* matching; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_READ_DISK_MAGIC ;
 int ARCHIVE_STATE_ANY ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;

int
archive_read_disk_set_matching(struct archive *_a, struct archive *_ma,
    void (*_excluded_func)(struct archive *, void *, struct archive_entry *),
    void *_client_data)
{
 struct archive_read_disk *a = (struct archive_read_disk *)_a;
 archive_check_magic(_a, ARCHIVE_READ_DISK_MAGIC,
     ARCHIVE_STATE_ANY, "archive_read_disk_set_matching");
 a->matching = _ma;
 a->excluded_cb_func = _excluded_func;
 a->excluded_cb_data = _client_data;
 return (ARCHIVE_OK);
}
