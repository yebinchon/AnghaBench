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

/* Variables and functions */
 int /*<<< orphan*/  LOGICAL_BLOCK_SIZE ; 
 int /*<<< orphan*/  VDT_TERMINATOR ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC2 (struct archive_write*) ; 
 int FUNC3 (struct archive_write*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct archive_write *a)
{
	unsigned char *bp;

	bp = FUNC2(a) -1;
	FUNC0(bp, VDT_TERMINATOR, 1);
	FUNC1(bp, 8, LOGICAL_BLOCK_SIZE);

	return (FUNC3(a, LOGICAL_BLOCK_SIZE));
}