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
struct pnpinfo {int /*<<< orphan*/  pi_ident; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pnpinfo*,int) ; 
 struct pnpinfo* FUNC2 (int) ; 

struct pnpinfo *
FUNC3(void)
{
    struct pnpinfo	*pi;
    
    pi = FUNC2(sizeof(struct pnpinfo));
    FUNC1(pi, sizeof(struct pnpinfo));
    FUNC0(&pi->pi_ident);
    return(pi);
}