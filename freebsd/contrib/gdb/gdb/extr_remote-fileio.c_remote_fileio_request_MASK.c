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
 int /*<<< orphan*/  FILEIO_EINTR ; 
 int /*<<< orphan*/  FILEIO_ENOSYS ; 
#define  RETURN_ERROR 129 
 int /*<<< orphan*/  RETURN_MASK_ALL ; 
#define  RETURN_QUIT 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  do_remote_fileio_request ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ remote_fio_ctrl_c_flag ; 
 scalar_t__ remote_fio_no_longjmp ; 
 int /*<<< orphan*/  uiout ; 

void
FUNC4 (char *buf)
{
  int ex;

  FUNC3 ();

  remote_fio_ctrl_c_flag = 0;
  remote_fio_no_longjmp = 0;

  ex = FUNC0 (uiout, do_remote_fileio_request, (void *)buf,
			 NULL, RETURN_MASK_ALL);
  switch (ex)
    {
      case RETURN_ERROR:
	FUNC1 (-1, FILEIO_ENOSYS);
        break;
      case RETURN_QUIT:
        FUNC1 (-1, FILEIO_EINTR);
	break;
      default:
        break;
    }

  FUNC2 ();
}