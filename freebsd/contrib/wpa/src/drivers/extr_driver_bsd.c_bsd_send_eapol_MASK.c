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
typedef  int /*<<< orphan*/  u32 ;
struct bsd_driver_data {int /*<<< orphan*/  sock_xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_EAPOL ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static int
FUNC2(void *priv, const u8 *addr, const u8 *data, size_t data_len,
	       int encrypt, const u8 *own_addr, u32 flags)
{
	struct bsd_driver_data *drv = priv;

	FUNC1(MSG_MSGDUMP, "TX EAPOL", data, data_len);

	return FUNC0(drv->sock_xmit, addr, ETH_P_EAPOL, data,
			      data_len);
}