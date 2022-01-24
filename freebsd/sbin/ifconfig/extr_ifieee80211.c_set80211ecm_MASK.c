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
struct afswtch {int dummy; } ;
struct TYPE_3__ {int ecm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__ regdomain ; 
 int /*<<< orphan*/  setregdomain_cb ; 

__attribute__((used)) static void
FUNC2(const char *val, int d, int s, const struct afswtch *rafp)
{
	FUNC1(s);
	regdomain.ecm = d;
	FUNC0(setregdomain_cb, &regdomain);
}