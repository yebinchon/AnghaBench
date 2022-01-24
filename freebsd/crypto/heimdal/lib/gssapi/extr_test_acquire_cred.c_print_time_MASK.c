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
typedef  scalar_t__ time_t ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ GSS_C_INDEFINITE ; 
 char* FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(OM_uint32 time_rec)
{
    if (time_rec == GSS_C_INDEFINITE) {
	FUNC1("cred never expire\n");
    } else {
	time_t t = time_rec + FUNC2(NULL);
	FUNC1("expiration time: %s", FUNC0(&t));
    }
}