
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter_bidder {int (* options ) (struct archive_read_filter_bidder*,char const*,char const*) ;} ;
struct archive_read_filter {int name; struct archive_read_filter_bidder* bidder; struct archive_read_filter* upstream; } ;
struct archive_read {struct archive_read_filter* filter; } ;
struct archive {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 scalar_t__ strcmp (int ,char const*) ;
 int stub1 (struct archive_read_filter_bidder*,char const*,char const*) ;

__attribute__((used)) static int
archive_set_filter_option(struct archive *_a, const char *m, const char *o,
    const char *v)
{
 struct archive_read *a = (struct archive_read *)_a;
 struct archive_read_filter *filter;
 struct archive_read_filter_bidder *bidder;
 int r, rv = ARCHIVE_WARN, matched_modules = 0;

 for (filter = a->filter; filter != ((void*)0); filter = filter->upstream) {
  bidder = filter->bidder;
  if (bidder == ((void*)0))
   continue;
  if (bidder->options == ((void*)0))

   continue;
  if (m != ((void*)0)) {
   if (strcmp(filter->name, m) != 0)
    continue;
   ++matched_modules;
  }

  r = bidder->options(bidder, o, v);

  if (r == ARCHIVE_FATAL)
   return (ARCHIVE_FATAL);

  if (r == ARCHIVE_OK)
   rv = ARCHIVE_OK;
 }


 if (m != ((void*)0) && matched_modules == 0)
  return ARCHIVE_WARN - 1;
 return (rv);
}
