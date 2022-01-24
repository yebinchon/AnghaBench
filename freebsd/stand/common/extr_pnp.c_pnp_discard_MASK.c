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
struct pnpinfo {int dummy; } ;

/* Variables and functions */
 struct pnpinfo* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pi_link ; 
 int /*<<< orphan*/  pnp_devices ; 
 int /*<<< orphan*/  FUNC2 (struct pnpinfo*) ; 

__attribute__((used)) static void
FUNC3(void)
{
    struct pnpinfo	*pi;

    while (FUNC0(&pnp_devices) != NULL) {
	pi = FUNC0(&pnp_devices);
	FUNC1(&pnp_devices, pi_link);
	FUNC2(pi);
    }
}