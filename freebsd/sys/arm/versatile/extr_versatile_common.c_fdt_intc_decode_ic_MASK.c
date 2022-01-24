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
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  pcell_t ;

/* Variables and functions */
 int ENXIO ; 
 int INTR_POLARITY_CONFORM ; 
 int INTR_TRIGGER_CONFORM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC2(phandle_t node, pcell_t *intr, int *interrupt, int *trig,
    int *pol)
{

	if (!FUNC1(node, "arm,versatile-vic"))
		return (ENXIO);

	*interrupt = FUNC0(intr[0]);
	*trig = INTR_TRIGGER_CONFORM;
	*pol = INTR_POLARITY_CONFORM;

	return (0);
}