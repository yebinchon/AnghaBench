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
struct group {int gr_gid; void* gr_name; } ;
typedef  int gid_t ;

/* Variables and functions */
 struct group GrEntry ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct group*,int /*<<< orphan*/ ,int) ; 

struct group *
FUNC2(gid_t gid)
{
	struct group *g = &GrEntry;

	FUNC1(g, 0, sizeof(*g));
	if (gid == 0) {
		g->gr_name = FUNC0("wheel");
		g->gr_gid = 0;
	} else if (gid == 100) {
		g->gr_name = FUNC0("users");
		g->gr_gid = 100;
	} else
		g = NULL;

	return g;
}