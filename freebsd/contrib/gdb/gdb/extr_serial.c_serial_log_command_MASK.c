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
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char serial_current_type ; 
 int /*<<< orphan*/  serial_logfp ; 

void
FUNC2 (const char *cmd)
{
  if (!serial_logfp)
    return;

  serial_current_type = 'c';

  FUNC0 ("\nc ", serial_logfp);
  FUNC0 (cmd, serial_logfp);

  /* Make sure that the log file is as up-to-date as possible,
     in case we are getting ready to dump core or something. */
  FUNC1 (serial_logfp);
}