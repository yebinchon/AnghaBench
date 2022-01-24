#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ca_name; } ;
typedef  TYPE_1__ umad_ca_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 

int FUNC3(umad_ca_t * ca)
{
	int r;

	FUNC1("ca_name %s", ca->ca_name);
	if (!ca)
		return -ENODEV;

	if ((r = FUNC2(ca)) < 0)
		return r;

	FUNC0("releasing %s", ca->ca_name);
	return 0;
}