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
typedef  enum serial_rc { ____Placeholder_serial_rc } serial_rc ;

/* Variables and functions */
#define  SERIAL_EOF 130 
#define  SERIAL_ERROR 129 
#define  SERIAL_TIMEOUT 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  remote_desc ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int
FUNC4 (int timeout)
{
  int ch;

  ch = FUNC2 (remote_desc, timeout);

  if (ch >= 0)
    return (ch & 0x7f);

  switch ((enum serial_rc) ch)
    {
    case SERIAL_EOF:
      FUNC3 ();
      FUNC0 ("Remote connection closed");
      /* no return */
    case SERIAL_ERROR:
      FUNC1 ("Remote communication error");
      /* no return */
    case SERIAL_TIMEOUT:
      break;
    }
  return ch;
}