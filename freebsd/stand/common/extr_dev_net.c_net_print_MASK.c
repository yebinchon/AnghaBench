#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct netif_driver {int netif_nifs; char* netif_bname; TYPE_1__* netif_ifs; } ;
struct TYPE_4__ {char* dv_name; } ;
struct TYPE_3__ {int /*<<< orphan*/  dif_unit; } ;

/* Variables and functions */
 TYPE_2__ netdev ; 
 struct netif_driver** netif_drivers ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 

__attribute__((used)) static int
FUNC2(int verbose)
{
	struct netif_driver *drv;
	int i, d, cnt;
	int ret = 0;

	if (netif_drivers[0] == NULL)
		return (ret);

	FUNC1("%s devices:", netdev.dv_name);
	if ((ret = FUNC0("\n")) != 0)
		return (ret);

	cnt = 0;
	for (d = 0; netif_drivers[d]; d++) {
		drv = netif_drivers[d];
		for (i = 0; i < drv->netif_nifs; i++) {
			FUNC1("\t%s%d:", netdev.dv_name, cnt++);
			if (verbose) {
				FUNC1(" (%s%d)", drv->netif_bname,
				    drv->netif_ifs[i].dif_unit);
			}
			if ((ret = FUNC0("\n")) != 0)
				return (ret);
		}
	}
	return (ret);
}