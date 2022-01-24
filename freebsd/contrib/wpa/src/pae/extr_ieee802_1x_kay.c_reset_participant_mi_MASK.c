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
struct ieee802_1x_mka_participant {scalar_t__ mn; int /*<<< orphan*/  mi; } ;
typedef  int /*<<< orphan*/  Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static Boolean
FUNC1(struct ieee802_1x_mka_participant *participant)
{
	if (FUNC0(participant->mi, sizeof(participant->mi)) < 0)
		return FALSE;
	participant->mn = 0;

	return TRUE;
}