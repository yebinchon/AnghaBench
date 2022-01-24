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
 int /*<<< orphan*/  DATA_MAXLEN ; 
 scalar_t__ MON_IDT ; 
 int /*<<< orphan*/  mips_desc ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ mips_monitor ; 
 scalar_t__ FUNC2 (char*,int,int) ; 
 scalar_t__ mips_receive_seq ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ mips_send_seq ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6 (void)
{
  /* Reset the sequence numbers, ready for the new debug sequence: */
  mips_send_seq = 0;
  mips_receive_seq = 0;

  if (mips_monitor != MON_IDT)
    FUNC3 ("debug\r", 0);
  else				/* assume IDT monitor by default */
    FUNC3 ("db tty0\r", 0);

  FUNC5 (1);
  FUNC4 (mips_desc, "\r", sizeof "\r" - 1);

  /* We don't need to absorb any spurious characters here, since the
     mips_receive_header will eat up a reasonable number of characters
     whilst looking for the SYN, however this avoids the "garbage"
     being displayed to the user. */
  if (mips_monitor != MON_IDT)
    FUNC1 ("\r");

  {
    char buff[DATA_MAXLEN + 1];
    if (FUNC2 (buff, 1, 3) < 0)
      FUNC0 ("Failed to initialize (didn't receive packet).");
  }
}