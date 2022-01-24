#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct skipper {int nskip; int /*<<< orphan*/ * s; } ;
typedef  int /*<<< orphan*/  s ;
struct TYPE_5__ {int nDebugStringLength; int /*<<< orphan*/  lpDebugStringData; } ;
struct TYPE_6__ {TYPE_1__ DebugString; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_3__ DEBUG_EVENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  curproc ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 struct skipper* skippy ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4 (DEBUG_EVENT *ev)
{
  char s[80];
  DWORD nread;
  struct skipper *skp;
  int nbytes = ev->u.DebugString.nDebugStringLength;

  if (nbytes > sizeof(s))
    nbytes = sizeof(s);

  FUNC1 (s, 0, sizeof (s));
  if (!FUNC0 (curproc, ev->u.DebugString.lpDebugStringData,
			  s, nbytes, &nread))
    return 0;

  for (skp = skippy; skp->s != NULL; skp++)
    if (FUNC3 ((wchar_t *) s, skp->s, FUNC2 (skp->s)) == 0)
      return skp->nskip;

  return 0;
}