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
struct archive_entry {int dummy; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 struct archive_entry* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8()
{
	struct archive_entry *ae;
	int64_t offset;
	int i;

	FUNC5((ae = FUNC1()) != NULL);
	FUNC2(ae, 1024*10);

	/*
	 * Add sparse block data up to the file size.
	 */
	offset = 0;
	for (i = 0; i < 10; i++) {
		FUNC3(ae, offset, 1024);
		offset += 1024;
	}

	FUNC7("There should be no sparse");
	FUNC6(0, FUNC4(ae));
	FUNC0(ae);
}