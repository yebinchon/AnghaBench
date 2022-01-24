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
 int ARCHIVE_FATAL ; 
 scalar_t__ ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_MAGIC ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 scalar_t__ FUNC0 (struct archive_read*,struct archive_read_filter_bidder**) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  rpm_bidder_bid ; 
 int /*<<< orphan*/  rpm_bidder_init ; 

int
FUNC2(struct archive *_a)
{
	struct archive_read *a = (struct archive_read *)_a;
	struct archive_read_filter_bidder *bidder;

	FUNC1(_a, ARCHIVE_READ_MAGIC,
	    ARCHIVE_STATE_NEW, "archive_read_support_filter_rpm");

	if (FUNC0(a, &bidder) != ARCHIVE_OK)
		return (ARCHIVE_FATAL);

	bidder->data = NULL;
	bidder->name = "rpm";
	bidder->bid = rpm_bidder_bid;
	bidder->init = rpm_bidder_init;
	bidder->options = NULL;
	bidder->free = NULL;
	return (ARCHIVE_OK);
}