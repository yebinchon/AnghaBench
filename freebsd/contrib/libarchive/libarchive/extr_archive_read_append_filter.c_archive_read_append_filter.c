
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter_bidder {int (* init ) (struct archive_read_filter*) ;int name; } ;
struct archive_read_filter {struct archive_read_filter* upstream; struct archive_read* archive; struct archive_read_filter_bidder* bidder; } ;
struct archive_read {int bypass_filter_bidding; struct archive_read_filter* filter; int archive; struct archive_read_filter_bidder* bidders; } ;
struct archive {int dummy; } ;


 int ARCHIVE_ERRNO_PROGRAMMER ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ENOMEM ;
 int __archive_read_free_filters (struct archive_read*) ;
 int archive_read_support_filter_bzip2 (struct archive*) ;
 int archive_read_support_filter_compress (struct archive*) ;
 int archive_read_support_filter_gzip (struct archive*) ;
 int archive_read_support_filter_lrzip (struct archive*) ;
 int archive_read_support_filter_lz4 (struct archive*) ;
 int archive_read_support_filter_lzip (struct archive*) ;
 int archive_read_support_filter_lzma (struct archive*) ;
 int archive_read_support_filter_rpm (struct archive*) ;
 int archive_read_support_filter_uu (struct archive*) ;
 int archive_read_support_filter_xz (struct archive*) ;
 int archive_read_support_filter_zstd (struct archive*) ;
 int archive_set_error (int *,int ,char*) ;
 scalar_t__ calloc (int,int) ;
 scalar_t__ strcmp (int ,char*) ;
 int strcpy (char*,char*) ;
 int stub1 (struct archive_read_filter*) ;

int
archive_read_append_filter(struct archive *_a, int code)
{
  int r1, r2, number_bidders, i;
  char str[20];
  struct archive_read_filter_bidder *bidder;
  struct archive_read_filter *filter;
  struct archive_read *a = (struct archive_read *)_a;

  r2 = (ARCHIVE_OK);
  switch (code)
  {
    case 133:




      r1 = (ARCHIVE_OK);
      break;
    case 138:
      strcpy(str, "gzip");
      r1 = archive_read_support_filter_gzip(_a);
      break;
    case 140:
      strcpy(str, "bzip2");
      r1 = archive_read_support_filter_bzip2(_a);
      break;
    case 139:
      strcpy(str, "compress (.Z)");
      r1 = archive_read_support_filter_compress(_a);
      break;
    case 132:
      archive_set_error(&a->archive, ARCHIVE_ERRNO_PROGRAMMER,
          "Cannot append program filter using archive_read_append_filter");
      return (ARCHIVE_FATAL);
    case 134:
      strcpy(str, "lzma");
      r1 = archive_read_support_filter_lzma(_a);
      break;
    case 129:
      strcpy(str, "xz");
      r1 = archive_read_support_filter_xz(_a);
      break;
    case 130:
      strcpy(str, "uu");
      r1 = archive_read_support_filter_uu(_a);
      break;
    case 131:
      strcpy(str, "rpm");
      r1 = archive_read_support_filter_rpm(_a);
      break;
    case 136:
      strcpy(str, "lz4");
      r1 = archive_read_support_filter_lz4(_a);
      break;
    case 128:
      strcpy(str, "zstd");
      r1 = archive_read_support_filter_zstd(_a);
      break;
    case 135:
      strcpy(str, "lzip");
      r1 = archive_read_support_filter_lzip(_a);
      break;
    case 137:
      strcpy(str, "lrzip");
      r1 = archive_read_support_filter_lrzip(_a);
      break;
    default:
      archive_set_error(&a->archive, ARCHIVE_ERRNO_PROGRAMMER,
          "Invalid filter code specified");
      return (ARCHIVE_FATAL);
  }

  if (code != 133)
  {
    number_bidders = sizeof(a->bidders) / sizeof(a->bidders[0]);

    bidder = a->bidders;
    for (i = 0; i < number_bidders; i++, bidder++)
    {
      if (!bidder->name || !strcmp(bidder->name, str))
        break;
    }
    if (!bidder->name || strcmp(bidder->name, str))
    {
      archive_set_error(&a->archive, ARCHIVE_ERRNO_PROGRAMMER,
          "Internal error: Unable to append filter");
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
    r2 = (bidder->init)(a->filter);
    if (r2 != ARCHIVE_OK) {
      __archive_read_free_filters(a);
      return (ARCHIVE_FATAL);
    }
  }

  a->bypass_filter_bidding = 1;
  return (r1 < r2) ? r1 : r2;
}
