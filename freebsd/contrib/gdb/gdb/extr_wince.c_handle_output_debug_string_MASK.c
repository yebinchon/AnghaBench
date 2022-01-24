#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct target_waitstatus {int dummy; } ;
typedef  int /*<<< orphan*/  s ;
typedef  int /*<<< orphan*/  p ;
typedef  int gdb_wince_len ;
struct TYPE_4__ {int nDebugStringLength; int /*<<< orphan*/  lpDebugStringData; } ;
struct TYPE_5__ {TYPE_1__ DebugString; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__ current_event ; 
 int /*<<< orphan*/  current_process_handle ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,int,int*) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5 (struct target_waitstatus *ourstatus)
{
  char p[256];
  char s[255];
  char *q;
  gdb_wince_len nbytes_read;
  gdb_wince_len nbytes = current_event.u.DebugString.nDebugStringLength;

  if (nbytes > 255)
    nbytes = 255;

  FUNC1 (p, 0, sizeof (p));
  if (!FUNC2 (current_process_handle,
			    current_event.u.DebugString.lpDebugStringData,
			    &p, nbytes, &nbytes_read)
      || !*p)
    return;

  FUNC1 (s, 0, sizeof (s));
  FUNC0 (CP_ACP, 0, (LPCWSTR) p, (int) nbytes_read, s,
		       sizeof (s) - 1, NULL, NULL);
  q = FUNC3 (s, '\n');
  if (q != NULL)
    {
      *q = '\0';
      if ((*--q = '\r'))
	*q = '\0';
    }

  FUNC4 (s);

  return;
}