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
 int FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mips_receive_wait ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 

__attribute__((used)) static void
FUNC4 (char *args, int from_tty)
{
  char buf[DATA_MAXLEN + 1];
  int rlen;

  FUNC3 (buf, "0x0 %s", args);
  FUNC1 (buf, 1);
  FUNC2 ("Send packet: %s\n", buf);

  rlen = FUNC0 (buf, 1, mips_receive_wait);
  buf[rlen] = '\0';
  FUNC2 ("Received packet: %s\n", buf);
}