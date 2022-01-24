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
struct archive_write {int dummy; } ;
struct archive_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct archive_entry*) ; 
 struct archive_entry* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct archive_write*,struct archive_entry*) ; 

__attribute__((used)) static int
FUNC6(struct archive_write *a)
{
	int er;
	struct archive_entry *trailer;

	trailer = FUNC1();
	FUNC2(trailer, 1);
	FUNC4(trailer, 0);
	FUNC3(trailer, "TRAILER!!!");
	/* Bypass the required data checks. */
	er = FUNC5(a, trailer);
	FUNC0(trailer);
	return (er);
}