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
struct pnpinfo {struct pnpinfo* pi_argv; struct pnpinfo* pi_module; struct pnpinfo* pi_desc; struct pnpinfo* id_ident; int /*<<< orphan*/  pi_ident; } ;
struct pnpident {struct pnpident* pi_argv; struct pnpident* pi_module; struct pnpident* pi_desc; struct pnpident* id_ident; int /*<<< orphan*/  pi_ident; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pnpinfo* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pnpinfo*) ; 
 int /*<<< orphan*/  id_link ; 

void
FUNC4(struct pnpinfo *pi)
{
    struct pnpident	*id;

    while (!FUNC0(&pi->pi_ident)) {
	id = FUNC1(&pi->pi_ident);
	FUNC2(&pi->pi_ident, id_link);
	FUNC3(id->id_ident);
	FUNC3(id);
    }
    if (pi->pi_desc)
	FUNC3(pi->pi_desc);
    if (pi->pi_module)
	FUNC3(pi->pi_module);
    if (pi->pi_argv)
	FUNC3(pi->pi_argv);
    FUNC3(pi);
}