#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int tindex; } ;

/* Variables and functions */
 scalar_t__ CAT ; 
 scalar_t__ PLUS ; 
 scalar_t__ QMARK ; 
 scalar_t__ REPMN ; 
 scalar_t__ STAR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 TYPE_1__* dfa ; 
 scalar_t__ FUNC3 () ; 
 int maxrep ; 
 int minrep ; 
 int FUNC4 (int) ; 
 scalar_t__ tok ; 

__attribute__((used)) static void
FUNC5 (void)
{
  int tindex, ntokens, i;

  FUNC1();
  while (tok == QMARK || tok == STAR || tok == PLUS || tok == REPMN)
    if (tok == REPMN)
      {
	ntokens = FUNC4(dfa->tindex);
	tindex = dfa->tindex - ntokens;
	if (maxrep < 0)
	  FUNC0(PLUS);
	if (minrep == 0)
	  FUNC0(QMARK);
	for (i = 1; i < minrep; ++i)
	  {
	    FUNC2(tindex, ntokens);
	    FUNC0(CAT);
	  }
	for (; i < maxrep; ++i)
	  {
	    FUNC2(tindex, ntokens);
	    FUNC0(QMARK);
	    FUNC0(CAT);
	  }
	tok = FUNC3();
      }
    else
      {
	FUNC0(tok);
	tok = FUNC3();
      }
}