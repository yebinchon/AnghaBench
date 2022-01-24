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
struct activemap {int am_mediasize; int am_extentshift; int am_nextents; } ;
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static __inline int
FUNC1(const struct activemap *amp, off_t offset)
{
	int extent;

	FUNC0(offset >= 0 && offset < amp->am_mediasize);
	extent = (offset >> amp->am_extentshift);
	FUNC0(extent >= 0 && extent < amp->am_nextents);
	return (extent);
}