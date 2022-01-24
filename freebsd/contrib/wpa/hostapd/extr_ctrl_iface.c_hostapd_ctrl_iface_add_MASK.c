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
struct hapd_interfaces {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 scalar_t__ FUNC0 (struct hapd_interfaces*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC2(struct hapd_interfaces *interfaces,
				  char *buf)
{
	if (FUNC0(interfaces, buf) < 0) {
		FUNC1(MSG_ERROR, "Adding interface %s failed", buf);
		return -1;
	}
	return 0;
}