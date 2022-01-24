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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2()
{
	FUNC1(stderr,
		"Usage: scsi_target [-AdSTY] [-b bufsize] [-c sectorsize]\n"
		"\t\t[-r numbufs] [-s volsize] [-W 8,16,32]\n"
		"\t\tbus:target:lun filename\n");
	FUNC0(1);
}