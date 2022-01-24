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
struct mv_ap806_gicp_softc {int /*<<< orphan*/  dev; int /*<<< orphan*/  parent; } ;
struct intr_map_data {scalar_t__ type; } ;
struct intr_irqsrc {int /*<<< orphan*/  isrc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUP ; 
 scalar_t__ INTR_MAP_DATA_FDT ; 
 int FUNC0 (int /*<<< orphan*/ ,struct intr_map_data*,struct intr_irqsrc**) ; 
 struct mv_ap806_gicp_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 struct intr_map_data* FUNC2 (struct mv_ap806_gicp_softc*,struct intr_map_data*) ; 

__attribute__((used)) static int
FUNC3(device_t dev, struct intr_map_data *data,
    struct intr_irqsrc **isrcp)
{
	struct mv_ap806_gicp_softc *sc;
	int ret;

	sc = FUNC1(dev);

	if (data->type != INTR_MAP_DATA_FDT)
		return (ENOTSUP);

	data = FUNC2(sc, data);
	if (data == NULL)
		return (EINVAL);

	ret = FUNC0(sc->parent, data, isrcp);
	(*isrcp)->isrc_dev = sc->dev;
	return(ret);
}