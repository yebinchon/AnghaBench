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
typedef  int /*<<< orphan*/  u_int ;
struct timecounter {struct imx_gpt_softc* tc_priv; } ;
struct imx_gpt_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMX_GPT_CNT ; 
 int /*<<< orphan*/  FUNC0 (struct imx_gpt_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int
FUNC1(struct timecounter *tc)
{
	struct imx_gpt_softc *sc;

	sc = tc->tc_priv;
	return (FUNC0(sc, IMX_GPT_CNT));
}