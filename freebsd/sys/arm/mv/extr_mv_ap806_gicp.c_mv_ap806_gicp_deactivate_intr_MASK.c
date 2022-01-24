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
struct resource {int dummy; } ;
struct mv_ap806_gicp_softc {int /*<<< orphan*/  parent; } ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,struct intr_irqsrc*,struct resource*,struct intr_map_data*) ; 
 struct mv_ap806_gicp_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 struct intr_map_data* FUNC2 (struct mv_ap806_gicp_softc*,struct intr_map_data*) ; 

__attribute__((used)) static int
FUNC3(device_t dev, struct intr_irqsrc *isrc,
    struct resource *res, struct intr_map_data *data)
{
	struct mv_ap806_gicp_softc *sc;

	sc = FUNC1(dev);

	data = FUNC2(sc, data);
	if (data == NULL)
		return (EINVAL);

	return (FUNC0(sc->parent, isrc, res, data));
}