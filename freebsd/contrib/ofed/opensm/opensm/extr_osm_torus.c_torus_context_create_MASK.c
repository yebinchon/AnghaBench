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
struct torus_context {TYPE_1__* osm; } ;
struct TYPE_3__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_1__ osm_opensm_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSM_LOG_ERROR ; 
 struct torus_context* FUNC1 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
struct torus_context *FUNC3(osm_opensm_t *osm)
{
	struct torus_context *ctx;

	ctx = FUNC1(1, sizeof(*ctx));
	if (ctx)
		ctx->osm = osm;
	else
		FUNC0(&osm->log, OSM_LOG_ERROR,
			"ERR 4E01: calloc: %s\n", FUNC2(errno));

	return ctx;
}