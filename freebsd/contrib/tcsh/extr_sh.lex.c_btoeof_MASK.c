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
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  L_XTND ; 
 int /*<<< orphan*/  SHIN ; 
 int /*<<< orphan*/  TCSH_F_SEEK ; 
 int /*<<< orphan*/ * alvec ; 
 int /*<<< orphan*/ * alvecp ; 
 int /*<<< orphan*/  aret ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * evalp ; 
 int /*<<< orphan*/ * evalvec ; 
 int /*<<< orphan*/  feobp ; 
 int /*<<< orphan*/  fseekp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3(void)
{
    (void) FUNC1(SHIN, (off_t) 0, L_XTND);
    aret = TCSH_F_SEEK;
    fseekp = feobp;
    alvec = NULL;
    alvecp = NULL;
    evalvec = NULL;
    evalp = NULL;
    FUNC2();
    FUNC0();
}