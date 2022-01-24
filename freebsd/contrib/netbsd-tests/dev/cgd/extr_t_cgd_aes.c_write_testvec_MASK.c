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
struct testvec {int blkno; int /*<<< orphan*/  ptxt; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EDOM ; 
 int SECSIZE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(int cgdfd, const struct testvec *tv)
{
	ssize_t written;

	if (FUNC0(cgdfd, tv->blkno * SECSIZE, SEEK_SET) < 0)
		return -1;

	written = FUNC1(cgdfd, tv->ptxt, SECSIZE);
	if (written < 0)
		return -1;
	if (written != SECSIZE) {
		errno = EDOM; /* Something distinct. */
		return -1;
	}

	return 0;
}