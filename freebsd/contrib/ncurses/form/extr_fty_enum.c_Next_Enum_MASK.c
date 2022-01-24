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
struct TYPE_2__ {char** kwds; int checkcase; int count; } ;
typedef  TYPE_1__ enumARG ;
typedef  int /*<<< orphan*/  FIELD ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char const*,unsigned char*,int) ; 
 scalar_t__ EXACT ; 
 int FALSE ; 
 int TRUE ; 
 scalar_t__ dummy ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool
FUNC3(FIELD *field, const void *argp)
{
  const enumARG *args = (const enumARG *)argp;
  char **kwds = args->kwds;
  bool ccase = args->checkcase;
  int cnt = args->count;
  unsigned char *bp = (unsigned char *)FUNC1(field, 0);

  if (kwds)
    {
      while (cnt--)
	{
	  if (FUNC0((unsigned char *)(*kwds++), bp, ccase) == EXACT)
	    break;
	}
      if (cnt <= 0)
	kwds = args->kwds;
      if ((cnt >= 0) || (FUNC0((const unsigned char *)dummy, bp, ccase) == EXACT))
	{
	  FUNC2(field, 0, *kwds);
	  return TRUE;
	}
    }
  return FALSE;
}