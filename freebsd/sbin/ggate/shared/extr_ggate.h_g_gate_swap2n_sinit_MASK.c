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
struct g_gate_sinit {int /*<<< orphan*/  gs_error; int /*<<< orphan*/  gs_sectorsize; int /*<<< orphan*/  gs_mediasize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC3(struct g_gate_sinit *sinit)
{

	/* Swap only used fields. */
	sinit->gs_mediasize = FUNC2(sinit->gs_mediasize);
	sinit->gs_sectorsize = FUNC1(sinit->gs_sectorsize);
	sinit->gs_error = FUNC0(sinit->gs_error);
}