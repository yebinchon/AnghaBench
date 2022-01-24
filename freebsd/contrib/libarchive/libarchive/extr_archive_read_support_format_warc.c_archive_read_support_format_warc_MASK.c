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
struct warc_s {int dummy; } ;
struct archive_read {int /*<<< orphan*/  archive; } ;
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_MAGIC ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC0 (struct archive_read*,struct warc_s*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _warc_bid ; 
 int /*<<< orphan*/  _warc_cleanup ; 
 int /*<<< orphan*/  _warc_rdhdr ; 
 int /*<<< orphan*/  _warc_read ; 
 int /*<<< orphan*/  _warc_skip ; 
 int /*<<< orphan*/  FUNC1 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct warc_s* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct warc_s*) ; 

int
FUNC5(struct archive *_a)
{
	struct archive_read *a = (struct archive_read *)_a;
	struct warc_s *w;
	int r;

	FUNC1(_a, ARCHIVE_READ_MAGIC,
	    ARCHIVE_STATE_NEW, "archive_read_support_format_warc");

	if ((w = FUNC3(1, sizeof(*w))) == NULL) {
		FUNC2(&a->archive, ENOMEM,
		    "Can't allocate warc data");
		return (ARCHIVE_FATAL);
	}

	r = FUNC0(
		a, w, "warc",
		_warc_bid, NULL, _warc_rdhdr, _warc_read,
		_warc_skip, NULL, _warc_cleanup, NULL, NULL);

	if (r != ARCHIVE_OK) {
		FUNC4(w);
		return (r);
	}
	return (ARCHIVE_OK);
}