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
struct archive_read_filter_bidder {char* name; int /*<<< orphan*/ * free; int /*<<< orphan*/ * options; int /*<<< orphan*/  init; int /*<<< orphan*/  bid; int /*<<< orphan*/ * data; } ;
struct archive_read {int dummy; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCHIVE_ERRNO_MISC ; 
 int ARCHIVE_FATAL ; 
 scalar_t__ ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_MAGIC ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int ARCHIVE_WARN ; 
 scalar_t__ FUNC0 (struct archive_read*,struct archive_read_filter_bidder**) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  zstd_bidder_bid ; 
 int /*<<< orphan*/  zstd_bidder_init ; 

int
FUNC3(struct archive *_a)
{
	struct archive_read *a = (struct archive_read *)_a;
	struct archive_read_filter_bidder *bidder;

	FUNC1(_a, ARCHIVE_READ_MAGIC,
	    ARCHIVE_STATE_NEW, "archive_read_support_filter_zstd");

	if (FUNC0(a, &bidder) != ARCHIVE_OK)
		return (ARCHIVE_FATAL);

	bidder->data = NULL;
	bidder->name = "zstd";
	bidder->bid = zstd_bidder_bid;
	bidder->init = zstd_bidder_init;
	bidder->options = NULL;
	bidder->free = NULL;
#if HAVE_ZSTD_H && HAVE_LIBZSTD
	return (ARCHIVE_OK);
#else
	FUNC2(_a, ARCHIVE_ERRNO_MISC,
	    "Using external zstd program for zstd decompression");
	return (ARCHIVE_WARN);
#endif
}