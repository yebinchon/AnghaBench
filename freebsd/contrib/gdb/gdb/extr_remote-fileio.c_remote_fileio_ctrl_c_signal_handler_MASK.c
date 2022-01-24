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
 int /*<<< orphan*/  RETURN_QUIT ; 
 void FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (int)) ; 
 int remote_fio_ctrl_c_flag ; 
 int /*<<< orphan*/  remote_fio_no_longjmp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (int signo)
{
  FUNC1 (SIG_IGN);
  remote_fio_ctrl_c_flag = 1;
  if (!remote_fio_no_longjmp)
    FUNC2 (RETURN_QUIT);
  FUNC1 (remote_fileio_ctrl_c_signal_handler);
}