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
typedef  int /*<<< orphan*/  what ;
typedef  int /*<<< orphan*/  n ;
typedef  scalar_t__ gdb_wince_id ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  s ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD
FUNC2 (LPCSTR huh, gdb_wince_id what_this)
{
  DWORD n;
  gdb_wince_id what;
  do
    if (FUNC0 (huh, s, &what, sizeof (what)) != sizeof (what))
      FUNC1 ("error getting record type from host - %s.", huh);
  while (what_this != what);

  if (FUNC0 (huh, s, &n, sizeof (n)) != sizeof (n))
    FUNC1 ("error getting %s from host.", huh);

  return n;
}