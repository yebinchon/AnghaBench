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
typedef  int /*<<< orphan*/  ufs2_daddr_t ;
struct uufsd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uufsd*,char*) ; 
 int FUNC1 (struct uufsd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct uufsd*) ; 

int
FUNC3(struct uufsd *disk, ufs2_daddr_t blockno, ufs2_daddr_t size)
{
	int rv;

	FUNC0(disk, NULL);
	rv = FUNC2(disk);
	if (rv == -1) {
		FUNC0(disk, "failed to open disk for writing");
		return(rv);
	}
	return (FUNC1(disk, blockno, size));
}