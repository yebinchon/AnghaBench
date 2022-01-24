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
struct netif_stats {int dummy; } ;
struct netif_driver {char* netif_bname; TYPE_1__* netif_ifs; int /*<<< orphan*/  (* netif_init ) (struct iodesc*,void*) ;} ;
struct netif {size_t nif_unit; struct netif_driver* nif_driver; } ;
struct iodesc {struct netif* io_netif; } ;
struct TYPE_2__ {int /*<<< orphan*/  dif_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ netif_debug ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct iodesc*,void*) ; 

void
FUNC4(struct netif *nif, struct iodesc *desc, void *machdep_hint)
{
	struct netif_driver *drv = nif->nif_driver;

#ifdef NETIF_DEBUG
	if (netif_debug)
		printf("%s%d: netif_attach\n", drv->netif_bname, nif->nif_unit);
#endif
	desc->io_netif = nif; 
#ifdef PARANOID
	if (drv->netif_init == NULL)
		panic("%s%d: no netif_init support", drv->netif_bname,
		    nif->nif_unit);
#endif
	drv->netif_init(desc, machdep_hint);
	FUNC0(drv->netif_ifs[nif->nif_unit].dif_stats, 
	    sizeof(struct netif_stats));
}