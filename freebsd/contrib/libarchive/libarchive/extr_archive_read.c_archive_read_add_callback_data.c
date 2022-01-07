
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_read_data_node {int begin_position; int total_size; void* data; } ;
struct TYPE_2__ {unsigned int nodes; struct archive_read_data_node* dataset; } ;
struct archive_read {TYPE_1__ client; int archive; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_READ_MAGIC ;
 int ARCHIVE_STATE_NEW ;
 int EINVAL ;
 int ENOMEM ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_set_error (int *,int ,char*) ;
 void* realloc (struct archive_read_data_node*,int) ;

int
archive_read_add_callback_data(struct archive *_a, void *client_data,
    unsigned int iindex)
{
 struct archive_read *a = (struct archive_read *)_a;
 void *p;
 unsigned int i;

 archive_check_magic(_a, ARCHIVE_READ_MAGIC, ARCHIVE_STATE_NEW,
     "archive_read_add_callback_data");
 if (iindex > a->client.nodes) {
  archive_set_error(&a->archive, EINVAL,
   "Invalid index specified.");
  return ARCHIVE_FATAL;
 }
 p = realloc(a->client.dataset, sizeof(*a->client.dataset)
  * (++(a->client.nodes)));
 if (p == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
   "No memory.");
  return ARCHIVE_FATAL;
 }
 a->client.dataset = (struct archive_read_data_node *)p;
 for (i = a->client.nodes - 1; i > iindex && i > 0; i--) {
  a->client.dataset[i].data = a->client.dataset[i-1].data;
  a->client.dataset[i].begin_position = -1;
  a->client.dataset[i].total_size = -1;
 }
 a->client.dataset[iindex].data = client_data;
 a->client.dataset[iindex].begin_position = -1;
 a->client.dataset[iindex].total_size = -1;
 return ARCHIVE_OK;
}
