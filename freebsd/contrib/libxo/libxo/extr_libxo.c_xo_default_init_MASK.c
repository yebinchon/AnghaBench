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
typedef  int /*<<< orphan*/  xo_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XOF_NO_ENV ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  xo_default_handle ; 
 int xo_default_inited ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC4 (void)
{
    xo_handle_t *xop = &xo_default_handle;

    FUNC2(xop);

#if !defined(NO_LIBXO_OPTIONS)
    if (!FUNC0(xop, XOF_NO_ENV)) {
       char *env = FUNC1("LIBXO_OPTIONS");

       if (env)
           FUNC3(xop, env);

    }
#endif /* NO_LIBXO_OPTIONS */

    xo_default_inited = 1;
}