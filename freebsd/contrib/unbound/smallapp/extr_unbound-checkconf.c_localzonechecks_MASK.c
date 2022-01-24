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
struct local_zones {int dummy; } ;
struct config_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct local_zones*,struct config_file*) ; 
 struct local_zones* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct local_zones*) ; 

__attribute__((used)) static void
FUNC4(struct config_file* cfg)
{
	struct local_zones* zs;
	if(!(zs = FUNC2()))
		FUNC0("out of memory");
	if(!FUNC1(zs, cfg))
		FUNC0("failed local-zone, local-data configuration");
	FUNC3(zs);
}