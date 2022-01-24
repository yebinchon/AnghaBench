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
typedef  int /*<<< orphan*/  profile_probe_t ;
struct TYPE_2__ {scalar_t__ profc_expected; int /*<<< orphan*/  profc_cyclic; scalar_t__ profc_interval; int /*<<< orphan*/ * profc_probe; } ;
typedef  TYPE_1__ profile_probe_percpu_t ;
typedef  int /*<<< orphan*/  hrtime_t ;

/* Variables and functions */
 int C_ABSOLUTE ; 
 int C_DIRECT_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	profile_probe_percpu_t *pcpu = arg;
	profile_probe_t *prof = pcpu->profc_probe;
	hrtime_t late;

	late = FUNC3(FUNC2() - pcpu->profc_expected);

	FUNC1(prof, late);
	pcpu->profc_expected += pcpu->profc_interval;
	FUNC0(&pcpu->profc_cyclic,
	    pcpu->profc_expected, 0, C_DIRECT_EXEC | C_ABSOLUTE);
}