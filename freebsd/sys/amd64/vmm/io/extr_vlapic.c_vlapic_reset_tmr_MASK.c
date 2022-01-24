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
struct vlapic {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vlapic*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vlapic*,int,int) ; 

void
FUNC2(struct vlapic *vlapic)
{
	int vector;

	FUNC0(vlapic, "vlapic resetting all vectors to edge-triggered");

	for (vector = 0; vector <= 255; vector++)
		FUNC1(vlapic, vector, false);
}