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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  time_t ;
struct archive_entry {int dummy; } ;
struct ar {int entry_padding; int entry_bytes_remaining; scalar_t__ entry_offset; } ;
typedef  int /*<<< orphan*/  mode_t ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AE_IFREG ; 
 int ARCHIVE_OK ; 
 int AR_date_offset ; 
 int /*<<< orphan*/  AR_date_size ; 
 int AR_gid_offset ; 
 int /*<<< orphan*/  AR_gid_size ; 
 int AR_mode_offset ; 
 int /*<<< orphan*/  AR_mode_size ; 
 int AR_size_offset ; 
 int /*<<< orphan*/  AR_size_size ; 
 int AR_uid_offset ; 
 int /*<<< orphan*/  AR_uid_size ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC6 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct archive_entry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct ar *ar, struct archive_entry *entry,
    const char *h)
{
	uint64_t n;

	/* Copy remaining header */
	FUNC2(entry, AE_IFREG);
	FUNC5(entry,
	    (time_t)FUNC0(h + AR_date_offset, AR_date_size), 0L);
	FUNC7(entry,
	    (uid_t)FUNC0(h + AR_uid_offset, AR_uid_size));
	FUNC3(entry,
	    (gid_t)FUNC0(h + AR_gid_offset, AR_gid_size));
	FUNC4(entry,
	    (mode_t)FUNC1(h + AR_mode_offset, AR_mode_size));
	n = FUNC0(h + AR_size_offset, AR_size_size);

	ar->entry_offset = 0;
	ar->entry_padding = n % 2;
	FUNC6(entry, n);
	ar->entry_bytes_remaining = n;
	return (ARCHIVE_OK);
}