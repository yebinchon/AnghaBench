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
typedef  int /*<<< orphan*/  jmp_buf_t ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int NeedsRedraw ; 
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 size_t FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC5 (int /*<<< orphan*/ **,int) ; 
 scalar_t__ haderr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(Char ***v, int cmd)
{
    jmp_buf_t osetexit;
    int gflag;

    if (**v == 0)
	return (0);
    gflag = FUNC8(*v);
    if (gflag) {
	size_t omark;

	FUNC4(osetexit);	/* make sure to come back here */
	omark = FUNC2();
	if (FUNC7() == 0)
	    *v = FUNC5(*v, gflag);
	FUNC1(omark);
	FUNC6(osetexit);
	if (haderr) {
	    haderr = 0;
	    NeedsRedraw = 1;
	    return (-1);
	}
	if (*v == 0)
	    return (0);
    }
    else
	return (0);

    if (cmd) {
	Char **av = *v, *p;
	int fwd, i;

	for (i = 0, fwd = 0; av[i] != NULL; i++) 
	    if (!FUNC3(NULL, av[i], 0)) {
		fwd++;		
		p = av[i];
		av[i] = NULL;
		FUNC9(p);
	    }
	    else if (fwd) 
		av[i - fwd] = av[i];

	if (fwd)
	    av[i - fwd] = av[i];
    }

    return FUNC0(*v);
}