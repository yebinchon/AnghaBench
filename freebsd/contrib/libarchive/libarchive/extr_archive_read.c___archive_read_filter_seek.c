
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct archive_read_filter {scalar_t__ end_of_file; scalar_t__ position; int buffer; int next; scalar_t__ client_avail; scalar_t__ avail; TYPE_1__* archive; int * seek; scalar_t__ fatal; scalar_t__ closed; } ;
struct archive_read_client {unsigned int nodes; TYPE_2__* dataset; } ;
typedef scalar_t__ int64_t ;
struct TYPE_4__ {scalar_t__ begin_position; scalar_t__ total_size; } ;
struct TYPE_3__ {struct archive_read_client client; } ;


 scalar_t__ ARCHIVE_FAILED ;
 scalar_t__ ARCHIVE_FATAL ;
 scalar_t__ ARCHIVE_OK ;



 int __LA_FALLTHROUGH ;
 scalar_t__ client_seek_proxy (struct archive_read_filter*,scalar_t__,int const) ;
 scalar_t__ client_switch_proxy (struct archive_read_filter*,unsigned int) ;

int64_t
__archive_read_filter_seek(struct archive_read_filter *filter, int64_t offset,
    int whence)
{
 struct archive_read_client *client;
 int64_t r;
 unsigned int cursor;

 if (filter->closed || filter->fatal)
  return (ARCHIVE_FATAL);
 if (filter->seek == ((void*)0))
  return (ARCHIVE_FAILED);

 client = &(filter->archive->client);
 switch (whence) {
 case 130:

  offset += filter->position;
  __LA_FALLTHROUGH;
 case 128:
  cursor = 0;
  while (1)
  {
   if (client->dataset[cursor].begin_position < 0 ||
       client->dataset[cursor].total_size < 0 ||
       client->dataset[cursor].begin_position +
         client->dataset[cursor].total_size - 1 > offset ||
       cursor + 1 >= client->nodes)
    break;
   r = client->dataset[cursor].begin_position +
    client->dataset[cursor].total_size;
   client->dataset[++cursor].begin_position = r;
  }
  while (1) {
   r = client_switch_proxy(filter, cursor);
   if (r != ARCHIVE_OK)
    return r;
   if ((r = client_seek_proxy(filter, 0, 129)) < 0)
    return r;
   client->dataset[cursor].total_size = r;
   if (client->dataset[cursor].begin_position +
       client->dataset[cursor].total_size - 1 > offset ||
       cursor + 1 >= client->nodes)
    break;
   r = client->dataset[cursor].begin_position +
    client->dataset[cursor].total_size;
   client->dataset[++cursor].begin_position = r;
  }
  offset -= client->dataset[cursor].begin_position;
  if (offset < 0
      || offset > client->dataset[cursor].total_size)
   return ARCHIVE_FATAL;
  if ((r = client_seek_proxy(filter, offset, 128)) < 0)
   return r;
  break;

 case 129:
  cursor = 0;
  while (1) {
   if (client->dataset[cursor].begin_position < 0 ||
       client->dataset[cursor].total_size < 0 ||
       cursor + 1 >= client->nodes)
    break;
   r = client->dataset[cursor].begin_position +
    client->dataset[cursor].total_size;
   client->dataset[++cursor].begin_position = r;
  }
  while (1) {
   r = client_switch_proxy(filter, cursor);
   if (r != ARCHIVE_OK)
    return r;
   if ((r = client_seek_proxy(filter, 0, 129)) < 0)
    return r;
   client->dataset[cursor].total_size = r;
   r = client->dataset[cursor].begin_position +
    client->dataset[cursor].total_size;
   if (cursor + 1 >= client->nodes)
    break;
   client->dataset[++cursor].begin_position = r;
  }
  while (1) {
   if (r + offset >=
       client->dataset[cursor].begin_position)
    break;
   offset += client->dataset[cursor].total_size;
   if (cursor == 0)
    break;
   cursor--;
   r = client->dataset[cursor].begin_position +
    client->dataset[cursor].total_size;
  }
  offset = (r + offset) - client->dataset[cursor].begin_position;
  if ((r = client_switch_proxy(filter, cursor)) != ARCHIVE_OK)
   return r;
  r = client_seek_proxy(filter, offset, 128);
  if (r < ARCHIVE_OK)
   return r;
  break;

 default:
  return (ARCHIVE_FATAL);
 }
 r += client->dataset[cursor].begin_position;

 if (r >= 0) {
  filter->avail = filter->client_avail = 0;
  filter->next = filter->buffer;
  filter->position = r;
  filter->end_of_file = 0;
 }
 return r;
}
