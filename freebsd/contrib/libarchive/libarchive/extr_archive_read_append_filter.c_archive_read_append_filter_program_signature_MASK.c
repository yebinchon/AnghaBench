#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct archive_read_filter_bidder {int (* init ) (struct archive_read_filter*) ;scalar_t__ name; scalar_t__ data; } ;
struct archive_read_filter {scalar_t__ name; struct archive_read_filter* upstream; struct archive_read* archive; struct archive_read_filter_bidder* bidder; } ;
struct archive_read {int bypass_filter_bidding; struct archive_read_filter* filter; int /*<<< orphan*/  archive; struct archive_read_filter_bidder* bidders; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_PROGRAMMER ; 
 int ARCHIVE_FATAL ; 
 scalar_t__ ARCHIVE_OK ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct archive_read*) ; 
 scalar_t__ FUNC1 (struct archive*,char const*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int FUNC4 (struct archive_read_filter*) ; 

int
FUNC5(struct archive *_a,
  const char *cmd, const void *signature, size_t signature_len)
{
  int r, number_bidders, i;
  struct archive_read_filter_bidder *bidder;
  struct archive_read_filter *filter;
  struct archive_read *a = (struct archive_read *)_a;

  if (FUNC1(_a, cmd, signature,
    signature_len) != (ARCHIVE_OK))
    return (ARCHIVE_FATAL);

  number_bidders = sizeof(a->bidders) / sizeof(a->bidders[0]);

  bidder = a->bidders;
  for (i = 0; i < number_bidders; i++, bidder++)
  {
    /* Program bidder name set to filter name after initialization */
    if (bidder->data && !bidder->name)
      break;
  }
  if (!bidder->data)
  {
    FUNC2(&a->archive, ARCHIVE_ERRNO_PROGRAMMER,
        "Internal error: Unable to append program filter");
    return (ARCHIVE_FATAL);
  }

  filter
      = (struct archive_read_filter *)FUNC3(1, sizeof(*filter));
  if (filter == NULL)
  {
    FUNC2(&a->archive, ENOMEM, "Out of memory");
    return (ARCHIVE_FATAL);
  }
  filter->bidder = bidder;
  filter->archive = a;
  filter->upstream = a->filter;
  a->filter = filter;
  r = (bidder->init)(a->filter);
  if (r != ARCHIVE_OK) {
    FUNC0(a);
    return (ARCHIVE_FATAL);
  }
  bidder->name = a->filter->name;

  a->bypass_filter_bidding = 1;
  return r;
}