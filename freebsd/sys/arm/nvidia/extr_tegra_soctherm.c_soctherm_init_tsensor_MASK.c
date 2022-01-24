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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct tsensor {char* name; scalar_t__ sensor_base; scalar_t__ therm_b; scalar_t__ therm_a; TYPE_1__* cfg; } ;
struct soctherm_softc {int dummy; } ;
struct soctherm_shared_cal {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ten_count; int /*<<< orphan*/  tiddq_en; scalar_t__ tsample; int /*<<< orphan*/  tall; } ;

/* Variables and functions */
 int FUNC0 (struct soctherm_softc*,scalar_t__) ; 
 scalar_t__ TSENSOR_CONFIG0 ; 
 int TSENSOR_CONFIG0_STATUS_CLR ; 
 int TSENSOR_CONFIG0_STOP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TSENSOR_CONFIG1 ; 
 int TSENSOR_CONFIG1_TEMP_ENABLE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ TSENSOR_CONFIG2 ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ TSENSOR_STATUS0 ; 
 scalar_t__ TSENSOR_STATUS1 ; 
 scalar_t__ TSENSOR_STATUS2 ; 
 int /*<<< orphan*/  FUNC7 (struct soctherm_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct tsensor*,struct soctherm_shared_cal*) ; 

__attribute__((used)) static void
FUNC10(struct soctherm_softc *sc, struct tsensor *sensor,
    struct soctherm_shared_cal *shared_cal)
{
	uint32_t val;

	FUNC9(sensor, shared_cal);

	val = FUNC0(sc, sensor->sensor_base + TSENSOR_CONFIG0);
	val |= TSENSOR_CONFIG0_STOP;
	val |= TSENSOR_CONFIG0_STATUS_CLR;
	FUNC7(sc, sensor->sensor_base + TSENSOR_CONFIG0, val);

	val = FUNC1(sensor->cfg->tall);
	val |= TSENSOR_CONFIG0_STOP;
	FUNC7(sc, sensor->sensor_base + TSENSOR_CONFIG0, val);

	val = FUNC4(sensor->cfg->tsample - 1);
	val |= FUNC3(sensor->cfg->tiddq_en);
	val |= FUNC2(sensor->cfg->ten_count);
	val |= TSENSOR_CONFIG1_TEMP_ENABLE;
	FUNC7(sc, sensor->sensor_base + TSENSOR_CONFIG1, val);

	val = FUNC5((uint16_t)sensor->therm_a) |
	     FUNC6((uint16_t)sensor->therm_b);
	FUNC7(sc, sensor->sensor_base + TSENSOR_CONFIG2, val);

	val = FUNC0(sc, sensor->sensor_base + TSENSOR_CONFIG0);
	val &= ~TSENSOR_CONFIG0_STOP;
	FUNC7(sc, sensor->sensor_base + TSENSOR_CONFIG0, val);
#ifdef DEBUG
	printf(" Sensor: %s  cfg:0x%08X, 0x%08X, 0x%08X,"
	    " sts:0x%08X, 0x%08X, 0x%08X\n", sensor->name,
	    RD4(sc, sensor->sensor_base + TSENSOR_CONFIG0),
	    RD4(sc, sensor->sensor_base + TSENSOR_CONFIG1),
	    RD4(sc, sensor->sensor_base + TSENSOR_CONFIG2),
	    RD4(sc, sensor->sensor_base + TSENSOR_STATUS0),
	    RD4(sc, sensor->sensor_base + TSENSOR_STATUS1),
	    RD4(sc, sensor->sensor_base + TSENSOR_STATUS2)
	    );
#endif
}