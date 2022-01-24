#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ nbWorkers; unsigned int adaptiveMode; } ;
typedef  TYPE_1__ FIO_prefs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 

void FUNC1(FIO_prefs_t* const prefs, unsigned adapt) {
    if ((adapt>0) && (prefs->nbWorkers==0))
        FUNC0(1, "Adaptive mode is not compatible with single thread mode \n");
    prefs->adaptiveMode = adapt;
}