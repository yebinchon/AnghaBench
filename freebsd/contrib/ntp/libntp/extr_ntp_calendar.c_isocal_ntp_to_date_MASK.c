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
typedef  int /*<<< orphan*/  vint64 ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  time_t ;
struct isodate {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct isodate*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

int
FUNC2(
	struct isodate *id,
	uint32_t	ntp,
	const time_t   *piv
	)
{
	vint64	ntp64;

	/*
	 * Unfold ntp time around current time into NTP domain, then
	 * convert the full time stamp.
	 */
	ntp64 = FUNC1(ntp, piv);
	return FUNC0(id, &ntp64);
}