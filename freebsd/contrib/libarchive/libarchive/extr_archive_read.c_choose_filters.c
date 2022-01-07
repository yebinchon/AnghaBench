
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_read_filter_bidder {int (* bid ) (struct archive_read_filter_bidder*,struct archive_read_filter*) ;int (* init ) (struct archive_read_filter*) ;} ;
struct archive_read_filter {struct archive_read_filter* upstream; struct archive_read* archive; struct archive_read_filter_bidder* bidder; int code; int name; } ;
struct TYPE_2__ {int compression_code; int compression_name; } ;
struct archive_read {TYPE_1__ archive; struct archive_read_filter* filter; struct archive_read_filter_bidder* bidders; } ;
typedef scalar_t__ ssize_t ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int MAX_NUMBER_FILTERS ;
 int __archive_read_filter_ahead (struct archive_read_filter*,int,scalar_t__*) ;
 int __archive_read_free_filters (struct archive_read*) ;
 int archive_set_error (TYPE_1__*,int ,char*) ;
 scalar_t__ calloc (int,int) ;
 int stub1 (struct archive_read_filter_bidder*,struct archive_read_filter*) ;
 int stub2 (struct archive_read_filter*) ;

__attribute__((used)) static int
choose_filters(struct archive_read *a)
{
 int number_bidders, i, bid, best_bid, number_filters;
 struct archive_read_filter_bidder *bidder, *best_bidder;
 struct archive_read_filter *filter;
 ssize_t avail;
 int r;

 for (number_filters = 0; number_filters < MAX_NUMBER_FILTERS; ++number_filters) {
  number_bidders = sizeof(a->bidders) / sizeof(a->bidders[0]);

  best_bid = 0;
  best_bidder = ((void*)0);

  bidder = a->bidders;
  for (i = 0; i < number_bidders; i++, bidder++) {
   if (bidder->bid != ((void*)0)) {
    bid = (bidder->bid)(bidder, a->filter);
    if (bid > best_bid) {
     best_bid = bid;
     best_bidder = bidder;
    }
   }
  }


  if (best_bidder == ((void*)0)) {

   __archive_read_filter_ahead(a->filter, 1, &avail);
   if (avail < 0) {
    __archive_read_free_filters(a);
    return (ARCHIVE_FATAL);
   }
   a->archive.compression_name = a->filter->name;
   a->archive.compression_code = a->filter->code;
   return (ARCHIVE_OK);
  }

  filter
      = (struct archive_read_filter *)calloc(1, sizeof(*filter));
  if (filter == ((void*)0))
   return (ARCHIVE_FATAL);
  filter->bidder = best_bidder;
  filter->archive = a;
  filter->upstream = a->filter;
  a->filter = filter;
  r = (best_bidder->init)(a->filter);
  if (r != ARCHIVE_OK) {
   __archive_read_free_filters(a);
   return (ARCHIVE_FATAL);
  }
 }
 archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
     "Input requires too many filters for decoding");
 return (ARCHIVE_FATAL);
}
