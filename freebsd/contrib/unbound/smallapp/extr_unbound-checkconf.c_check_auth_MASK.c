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
struct config_file {int dummy; } ;
struct auth_zones {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct auth_zones*,struct config_file*,int /*<<< orphan*/ ) ; 
 struct auth_zones* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct auth_zones*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(struct config_file* cfg)
{
	struct auth_zones* az = FUNC1();
	if(!az || !FUNC0(az, cfg, 0)) {
		FUNC3("Could not setup authority zones");
	}
	FUNC2(az);
}