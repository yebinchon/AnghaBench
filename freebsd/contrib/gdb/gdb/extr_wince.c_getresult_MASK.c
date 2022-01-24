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
typedef  scalar_t__ gdb_wince_len ;
typedef  int /*<<< orphan*/  gdb_wince_id ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  LPCSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (short) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

int
FUNC4 (LPCSTR huh, gdb_wince_id what, LPVOID buf, gdb_wince_len * nbytes)
{
  gdb_wince_len dummy;
  if (nbytes == NULL)
    nbytes = &dummy;

  *nbytes = FUNC1 (huh, what);

  if ((short) *nbytes < 0)
    {
      FUNC0 (-(short) *nbytes);
      return 0;
    }

  if ((gdb_wince_len) FUNC2 (huh, s, buf, *nbytes) != *nbytes)
    FUNC3 ("couldn't read information from wince stub - %s", huh);

  return 1;
}