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
typedef  int /*<<< orphan*/  uint8_t ;
struct tps65217_chgconfig3_reg {size_t trange; size_t termif; size_t pchrgt; size_t dppmth; size_t ichrg; } ;
struct tps65217_chgconfig2_reg {size_t voreg; size_t vprechg; size_t dyntmr; } ;
struct tps65217_chgconfig1_reg {size_t chg_en; size_t susp; size_t term; size_t reset; size_t ntc_type; size_t tmr_en; size_t timer; } ;
struct tps65217_chgconfig0_reg {size_t battemp; size_t pchgtout; size_t chgtout; size_t active; size_t termi; size_t tsusp; size_t dppm; size_t treg; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  TPS65217_CHGCONFIG0_REG ; 
 int /*<<< orphan*/  TPS65217_CHGCONFIG1_REG ; 
 int /*<<< orphan*/  TPS65217_CHGCONFIG2_REG ; 
 int /*<<< orphan*/  TPS65217_CHGCONFIG3_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 char const** tps65217_voreg_c ; 

__attribute__((used)) static void
FUNC2(device_t dev)
{
	struct tps65217_chgconfig0_reg reg0;
	struct tps65217_chgconfig1_reg reg1;
	struct tps65217_chgconfig2_reg reg2;
	struct tps65217_chgconfig3_reg reg3;
	const char *e_d[] = {"enabled", "disabled"};
	const char *d_e[] = {"disabled", "enabled"};
	const char *i_a[] = {"inactive", "active"};
	const char *f_t[] = {"false", "true"};
	const char *timer_c[] = {"4h", "5h", "6h", "8h"};
	const char *ntc_type_c[] = {"100k", "10k"};
	const char *vprechg_c[] = {"2.9V", "2.5V"};
	const char *trange_c[] = {"0-45 C", "0-60 C"};
	const char *termif_c[] = {"2.5%", "7.5%", "15%", "18%"};
	const char *pchrgt_c[] = {"30 min", "60 min"};
	const char *dppmth_c[] = {"3.50V", "3.75V", "4.00V", "4.25V"};
	const char *ichrg_c[] = {"300mA", "400mA", "500mA", "700mA"};

	FUNC0(dev, TPS65217_CHGCONFIG0_REG, (uint8_t *)&reg0, 1);
	FUNC1(dev, " BAT TEMP/NTC ERROR: %s\n", f_t[reg0.battemp]);
	FUNC1(dev, " Pre-charge timer time-out: %s\n", f_t[reg0.pchgtout]);
	FUNC1(dev, " Charge timer time-out: %s\n", f_t[reg0.chgtout]);
	FUNC1(dev, " Charger active: %s\n", f_t[reg0.active]);
	FUNC1(dev, " Termination current detected: %s\n", f_t[reg0.termi]);
	FUNC1(dev, " Thermal suspend: %s\n", f_t[reg0.tsusp]);
	FUNC1(dev, " DPPM active: %s\n", f_t[reg0.dppm]);
	FUNC1(dev, " Thermal regulation: %s\n", i_a[reg0.treg]);

	FUNC0(dev, TPS65217_CHGCONFIG1_REG, (uint8_t *)&reg1, 1);
	FUNC1(dev, " Charger: %s\n", d_e[reg1.chg_en]);
	FUNC1(dev, " Suspend charge: %s\n", i_a[reg1.susp]);
	FUNC1(dev, " Charge termination: %s\n", e_d[reg1.term]);
	FUNC1(dev, " Charger reset: %s\n", i_a[reg1.reset]);
	FUNC1(dev, " NTC TYPE: %s\n", ntc_type_c[reg1.ntc_type]);
	FUNC1(dev, " Safety timer: %s\n", d_e[reg1.tmr_en]);
	FUNC1(dev, " Charge safety timer: %s\n", timer_c[reg1.timer]);

	FUNC0(dev, TPS65217_CHGCONFIG2_REG, (uint8_t *)&reg2, 1);
	FUNC1(dev, " Charge voltage: %s\n", tps65217_voreg_c[reg2.voreg]);
	FUNC1(dev, " Pre-charge to fast charge transition voltage: %s\n",
	    vprechg_c[reg2.vprechg]);
	FUNC1(dev, " Dynamic timer function: %s\n", d_e[reg2.dyntmr]);

	FUNC0(dev, TPS65217_CHGCONFIG3_REG, (uint8_t *)&reg3, 1);
	FUNC1(dev, " Temperature range for charging: %s\n", trange_c[reg3.trange]);
	FUNC1(dev, " Termination current factor: %s\n", termif_c[reg3.termif]);
	FUNC1(dev, " Pre-charge time: %s\n", pchrgt_c[reg3.pchrgt]);
	FUNC1(dev, " Power path DPPM threshold: %s\n", dppmth_c[reg3.dppmth]);
	FUNC1(dev, " Charge current: %s\n", ichrg_c[reg3.ichrg]);
}