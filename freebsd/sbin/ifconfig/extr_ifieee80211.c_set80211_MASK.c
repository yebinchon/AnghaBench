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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int,int,int,void*) ; 
 int /*<<< orphan*/  name ; 

__attribute__((used)) static void
FUNC2(int s, int type, int val, int len, void *data)
{
	int ret;

	ret = FUNC1(s, name, type, val, len, data);
	if (ret < 0)
		FUNC0(1, "SIOCS80211");
}