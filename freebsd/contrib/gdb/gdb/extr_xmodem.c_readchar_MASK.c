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
struct serial {int dummy; } ;

/* Variables and functions */
 int SERIAL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ remote_debug ; 
 int FUNC3 (struct serial*,int) ; 

__attribute__((used)) static int
FUNC4 (struct serial *desc, int timeout)
{
  int c;

  c = FUNC3 (desc, timeout);

  if (remote_debug > 0)
    FUNC1 (c, gdb_stdlog);

  if (c >= 0)
    return c;

  if (c == SERIAL_TIMEOUT)
    FUNC0 ("Timeout reading from remote system.");

  FUNC2 ("xmodem.c:readchar()");
}