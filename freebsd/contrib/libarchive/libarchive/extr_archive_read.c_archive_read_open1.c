
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct archive_read_filter {char* name; struct archive_read_filter* upstream; int code; int (* sswitch ) (struct archive_read_filter*,int ) ;int close; int seek; int skip; int read; int open; int data; struct archive_read* archive; int * bidder; } ;
struct TYPE_9__ {void* state; } ;
struct TYPE_8__ {int (* opener ) (TYPE_3__*,int ) ;unsigned int nodes; TYPE_1__* dataset; int (* closer ) (TYPE_3__*,int ) ;int * reader; } ;
struct archive_read {struct archive_read_filter* filter; TYPE_3__ archive; int * formats; int * format; int bypass_filter_bidding; TYPE_2__ client; } ;
struct archive {int dummy; } ;
struct TYPE_7__ {scalar_t__ begin_position; int data; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_FILTER_NONE ;
 int ARCHIVE_OK ;
 int ARCHIVE_READ_MAGIC ;
 void* ARCHIVE_STATE_FATAL ;
 void* ARCHIVE_STATE_HEADER ;
 int ARCHIVE_STATE_NEW ;
 int ARCHIVE_WARN ;
 int EINVAL ;
 int archive_check_magic (struct archive*,int ,int ,char*) ;
 int archive_clear_error (TYPE_3__*) ;
 int archive_set_error (TYPE_3__*,int ,char*) ;
 struct archive_read_filter* calloc (int,int) ;
 int choose_filters (struct archive_read*) ;
 int choose_format (struct archive_read*) ;
 int client_close_proxy ;
 int client_open_proxy ;
 int client_read_proxy ;
 int client_seek_proxy ;
 int client_skip_proxy ;
 int client_switch_proxy (struct archive_read_filter*,int ) ;
 int close_filters (struct archive_read*) ;
 int stub1 (TYPE_3__*,int ) ;
 int stub2 (TYPE_3__*,int ) ;

int
archive_read_open1(struct archive *_a)
{
 struct archive_read *a = (struct archive_read *)_a;
 struct archive_read_filter *filter, *tmp;
 int slot, e = ARCHIVE_OK;
 unsigned int i;

 archive_check_magic(_a, ARCHIVE_READ_MAGIC, ARCHIVE_STATE_NEW,
     "archive_read_open");
 archive_clear_error(&a->archive);

 if (a->client.reader == ((void*)0)) {
  archive_set_error(&a->archive, EINVAL,
      "No reader function provided to archive_read_open");
  a->archive.state = ARCHIVE_STATE_FATAL;
  return (ARCHIVE_FATAL);
 }


 if (a->client.opener != ((void*)0)) {
  e = (a->client.opener)(&a->archive, a->client.dataset[0].data);
  if (e != 0) {

   if (a->client.closer) {
    for (i = 0; i < a->client.nodes; i++)
     (a->client.closer)(&a->archive,
         a->client.dataset[i].data);
   }
   return (e);
  }
 }

 filter = calloc(1, sizeof(*filter));
 if (filter == ((void*)0))
  return (ARCHIVE_FATAL);
 filter->bidder = ((void*)0);
 filter->upstream = ((void*)0);
 filter->archive = a;
 filter->data = a->client.dataset[0].data;
 filter->open = client_open_proxy;
 filter->read = client_read_proxy;
 filter->skip = client_skip_proxy;
 filter->seek = client_seek_proxy;
 filter->close = client_close_proxy;
 filter->sswitch = client_switch_proxy;
 filter->name = "none";
 filter->code = ARCHIVE_FILTER_NONE;

 a->client.dataset[0].begin_position = 0;
 if (!a->filter || !a->bypass_filter_bidding)
 {
  a->filter = filter;

  e = choose_filters(a);
  if (e < ARCHIVE_WARN) {
   a->archive.state = ARCHIVE_STATE_FATAL;
   return (ARCHIVE_FATAL);
  }
 }
 else
 {

  tmp = a->filter;
  while (tmp->upstream)
   tmp = tmp->upstream;
  tmp->upstream = filter;
 }

 if (!a->format)
 {
  slot = choose_format(a);
  if (slot < 0) {
   close_filters(a);
   a->archive.state = ARCHIVE_STATE_FATAL;
   return (ARCHIVE_FATAL);
  }
  a->format = &(a->formats[slot]);
 }

 a->archive.state = ARCHIVE_STATE_HEADER;


 client_switch_proxy(a->filter, 0);
 return (e);
}
