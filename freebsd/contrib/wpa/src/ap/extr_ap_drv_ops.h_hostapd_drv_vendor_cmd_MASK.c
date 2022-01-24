#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct hostapd_data {int /*<<< orphan*/  drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* vendor_cmd ) (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/  const*,size_t,struct wpabuf*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/  const*,size_t,struct wpabuf*) ; 

__attribute__((used)) static inline int FUNC1(struct hostapd_data *hapd,
					 int vendor_id, int subcmd,
					 const u8 *data, size_t data_len,
					 struct wpabuf *buf)
{
	if (hapd->driver == NULL || hapd->driver->vendor_cmd == NULL)
		return -1;
	return hapd->driver->vendor_cmd(hapd->drv_priv, vendor_id, subcmd, data,
					data_len, buf);
}