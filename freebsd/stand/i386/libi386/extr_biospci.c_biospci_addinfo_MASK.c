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
struct pnpinfo {int /*<<< orphan*/  pi_desc; } ;
struct pci_subclass {char* ps_name; } ;
struct pci_progif {char* pi_name; } ;
struct pci_class {char* pc_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pnpinfo*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pnpinfo*) ; 
 struct pnpinfo* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(int devid, struct pci_class *pc, struct pci_subclass *psc, struct pci_progif *ppi) 
{
    struct pnpinfo	*pi;
    char		desc[80];
    
    
    /* build the description */
    desc[0] = 0;
    if (ppi->pi_name != NULL) {
	FUNC4(desc, ppi->pi_name);
	FUNC4(desc, " ");
    }
    if (psc->ps_name != NULL) {
	FUNC4(desc, psc->ps_name);
	FUNC4(desc, " ");
    }
    if (pc->pc_name != NULL)
	FUNC4(desc, pc->pc_name);

    pi = FUNC2();
    pi->pi_desc = FUNC5(desc);
    FUNC3(desc,"0x%08x", devid);
    FUNC0(pi, desc);
    FUNC1(pi);
}