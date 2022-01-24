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
struct rtattr {scalar_t__ rta_type; scalar_t__ rta_len; } ;
struct ifinfomsg {scalar_t__ ifi_index; } ;
struct atheros_driver_data {scalar_t__ ifindex; } ;

/* Variables and functions */
 scalar_t__ IFLA_WIRELESS ; 
 int FUNC0 (int) ; 
 struct rtattr* FUNC1 (struct rtattr*,int) ; 
 scalar_t__ FUNC2 (struct rtattr*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct atheros_driver_data*,char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(void *ctx,
				   struct ifinfomsg *ifi, u8 *buf, size_t len)
{
	struct atheros_driver_data *drv = ctx;
	int attrlen, rta_len;
	struct rtattr *attr;

	if (ifi->ifi_index != drv->ifindex)
		return;

	attrlen = len;
	attr = (struct rtattr *) buf;

	rta_len = FUNC0(sizeof(struct rtattr));
	while (FUNC2(attr, attrlen)) {
		if (attr->rta_type == IFLA_WIRELESS) {
			FUNC3(
				drv, ((char *) attr) + rta_len,
				attr->rta_len - rta_len);
		}
		attr = FUNC1(attr, attrlen);
	}
}