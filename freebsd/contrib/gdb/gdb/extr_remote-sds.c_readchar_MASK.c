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

/* Variables and functions */
#define  SERIAL_EOF 130 
#define  SERIAL_ERROR 129 
#define  SERIAL_TIMEOUT 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int remote_debug ; 
 int /*<<< orphan*/  sds_desc ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4 (int timeout)
{
  int ch;

  ch = FUNC3 (sds_desc, timeout);

  if (remote_debug > 1 && ch >= 0)
    FUNC1 (gdb_stdlog, "%c(%x)", ch, ch);

  switch (ch)
    {
    case SERIAL_EOF:
      FUNC0 ("Remote connection closed");
    case SERIAL_ERROR:
      FUNC2 ("Remote communication error");
    case SERIAL_TIMEOUT:
      return ch;
    default:
      return ch & 0x7f;
    }
}