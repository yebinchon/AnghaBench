
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter_bidder {int (* init ) (struct archive_read_filter*) ;scalar_t__ name; scalar_t__ data; } ;
struct archive_read_filter {scalar_t__ name; struct archive_read_filter* upstream; struct archive_read* archive; struct archive_read_filter_bidder* bidder; } ;
struct archive_read {int bypass_filter_bidding; struct archive_read_filter* filter; int archive; struct archive_read_filter_bidder* bidders; } ;
struct archive {int dummy; } ;


 int ARCHIVE_ERRNO_PROGRAMMER ;
 int ARCHIVE_FATAL ;
 scalar_t__ ARCHIVE_OK ;
 int ENOMEM ;
 int __archive_read_free_filters (struct archive_read*) ;
 scalar_t__ archive_read_support_filter_program_signature (struct archive*,char const*,void const*,size_t) ;
 int archive_set_error (int *,int ,char*) ;
 scalar_t__ calloc (int,int) ;
 int stub1 (struct archive_read_filter*) ;

int
archive_read_append_filter_program_signature(struct archive *_a,
  const char *cmd, const void *signature, size_t signature_len)
{
  int r, number_bidders, i;
  struct archive_read_filter_bidder *bidder;
  struct archive_read_filter *filter;
  struct archive_read *a = (struct archive_read *)_a;

  if (archive_read_support_filter_program_signature(_a, cmd, signature,
    signature_len) != (ARCHIVE_OK))
    return (ARCHIVE_FATAL);

  number_bidders = sizeof(a->bidders) / sizeof(a->bidders[0]);

  bidder = a->bidders;
  for (i = 0; i < number_bidders; i++, bidder++)
  {

    if (bidder->data && !bidder->name)
      break;
  }
  if (!bidder->data)
  {
    archive_set_error(&a->archive, ARCHIVE_ERRNO_PROGRAMMER,
        "Internal error: Unable to append program filter");
    return (ARCHIVE_FATAL);
  }

  filter
      = (struct archive_read_filter *)calloc(1, sizeof(*filter));
  if (filter == ((void*)0))
  {
    archive_set_error(&a->archive, ENOMEM, "Out of memory");
    return (ARCHIVE_FATAL);
  }
  filter->bidder = bidder;
  filter->archive = a;
  filter->upstream = a->filter;
  a->filter = filter;
  r = (bidder->init)(a->filter);
  if (r != ARCHIVE_OK) {
    __archive_read_free_filters(a);
    return (ARCHIVE_FATAL);
  }
  bidder->name = a->filter->name;

  a->bypass_filter_bidding = 1;
  return r;
}
