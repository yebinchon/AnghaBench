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
struct g_gate_version {void* gv_error; void* gv_version; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 

__attribute__((used)) static __inline void
FUNC1(struct g_gate_version *ver)
{

	ver->gv_version = FUNC0(ver->gv_version);
	ver->gv_error = FUNC0(ver->gv_error);
}