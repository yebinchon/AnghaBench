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
struct archive {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  ARCHIVE_READ_MAGIC ; 
 int /*<<< orphan*/  ARCHIVE_STATE_NEW ; 
 int /*<<< orphan*/  FUNC0 (struct archive*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct archive*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive*) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*) ; 
 int /*<<< orphan*/  FUNC7 (struct archive*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive*) ; 
 int /*<<< orphan*/  FUNC9 (struct archive*) ; 
 int /*<<< orphan*/  FUNC10 (struct archive*) ; 
 int /*<<< orphan*/  FUNC11 (struct archive*) ; 
 int /*<<< orphan*/  FUNC12 (struct archive*) ; 
 int /*<<< orphan*/  FUNC13 (struct archive*) ; 
 int /*<<< orphan*/  FUNC14 (struct archive*) ; 
 int /*<<< orphan*/  FUNC15 (struct archive*) ; 

int
FUNC16(struct archive *a)
{
	FUNC0(a, ARCHIVE_READ_MAGIC,
	    ARCHIVE_STATE_NEW, "archive_read_support_format_all");

	/* TODO: It would be nice to compute the ordering
	 * here automatically so that people who enable just
	 * a few formats can still get the benefits.  That
	 * may just require the format registration to include
	 * a "maximum read-ahead" value (anything that uses seek
	 * would be essentially infinite read-ahead).  The core
	 * bid management can then sort the bidders before calling
	 * them.
	 *
	 * If you implement the above, please return the list below
	 * to alphabetic order.
	 */

	/*
	 * These bidders are all pretty cheap; they just examine a
	 * small initial part of the archive.  If one of these bids
	 * high, we can maybe avoid running any of the more expensive
	 * bidders below.
	 */
	FUNC3(a);
	FUNC5(a);
	FUNC6(a);
	FUNC8(a);
	FUNC9(a);
	FUNC12(a);
	FUNC14(a);
	FUNC13(a);

	/*
	 * Install expensive bidders last.  By doing them last, we
	 * increase the chance that a high bid from someone else will
	 * make it unnecessary for these to do anything at all.
	 */
	/* These three have potentially large look-ahead. */
	FUNC2(a);
	FUNC4(a);
	FUNC10(a);
	FUNC11(a);
	FUNC7(a);
	/* Seek is really bad, since it forces the read-ahead
	 * logic to discard buffered data. */
	FUNC15(a);

	/* Note: We always return ARCHIVE_OK here, even if some of the
	 * above return ARCHIVE_WARN.  The intent here is to enable
	 * "as much as possible."  Clients who need specific
	 * compression should enable those individually so they can
	 * verify the level of support. */
	/* Clear any warning messages set by the above functions. */
	FUNC1(a);
	return (ARCHIVE_OK);
}