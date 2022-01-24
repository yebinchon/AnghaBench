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
typedef  int /*<<< orphan*/  u8 ;
struct dl_list {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MACSTR ; 
 int FUNC1 (struct dl_list*,char*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct dl_list *txt_list, const char *txt)
{
	u8 addr[ETH_ALEN];
	char buf[18];

	if (FUNC2(txt, addr) < 0)
		return -1;
	FUNC3(buf, sizeof(buf), MACSTR, FUNC0(addr));
	return FUNC1(txt_list, buf);
}