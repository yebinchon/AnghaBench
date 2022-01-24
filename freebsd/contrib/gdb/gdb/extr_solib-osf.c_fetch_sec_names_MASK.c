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
struct lm_sec {char* name; int /*<<< orphan*/  nameaddr; } ;
struct lm_info {int nsecs; struct lm_sec* secs; } ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct lm_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4 (struct lm_info *lmi)
{
#ifndef USE_LDR_ROUTINES
  int i, errcode;
  struct lm_sec *lms;
  char *name;

  for (i = 0; i < lmi->nsecs; i++)
    {
      lms = lmi->secs + i;
      FUNC1 (lms->nameaddr, &name, PATH_MAX, &errcode);
      if (errcode != 0)
	{
	  FUNC2 ("unable to read shared sec name at 0x%lx", lms->nameaddr);
	  name = FUNC3 ("");
	}
      lms->name = name;
    }
  FUNC0 (lmi);
#endif
}