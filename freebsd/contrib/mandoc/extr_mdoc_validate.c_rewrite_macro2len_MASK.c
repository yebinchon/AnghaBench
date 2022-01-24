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
struct roff_man {int /*<<< orphan*/  mdocmac; } ;
typedef  enum roff_tok { ____Placeholder_roff_tok } roff_tok ;

/* Variables and functions */
 int TOKEN_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static void
FUNC5(struct roff_man *mdoc, char **arg)
{
	size_t		  width;
	enum roff_tok	  tok;

	if (*arg == NULL)
		return;
	else if ( ! FUNC4(*arg, "Ds"))
		width = 6;
	else if ((tok = FUNC3(mdoc->mdocmac, *arg, 0)) == TOKEN_NONE)
		return;
	else
		width = FUNC1(tok);

	FUNC0(*arg);
	FUNC2(arg, "%zun", width);
}