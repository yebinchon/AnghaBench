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
struct timeval {int dummy; } ;
struct fio_timeval {int dummy; } ;
typedef  scalar_t__ LONGEST ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FILEIO_EINVAL ; 
 int FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct timeval*,struct fio_timeval*) ; 
 int FUNC7 (scalar_t__,char*,int) ; 
 int remote_fio_no_longjmp ; 

__attribute__((used)) static void
FUNC8 (char *buf)
{
  LONGEST lnum;
  CORE_ADDR ptrval;
  int ret, retlength;
  struct timeval tv;
  struct fio_timeval ftv;

  /* 1. Parameter: struct timeval pointer */
  if (FUNC1 (&buf, &lnum))
    {
      FUNC2 ();
      return;
    }
  ptrval = (CORE_ADDR) lnum;
  /* 2. Parameter: some pointer value... */
  if (FUNC1 (&buf, &lnum))
    {
      FUNC2 ();
      return;
    }
  /* ...which has to be NULL */
  if (lnum)
    {
      FUNC3 (-1, FILEIO_EINVAL);
      return;
    }

  remote_fio_no_longjmp = 1;
  ret = FUNC0 (&tv, NULL);

  if (ret == -1)
    {
      FUNC4 (-1);
      return;
    }

  if (ptrval)
    {
      FUNC6 (&tv, &ftv);

      retlength = FUNC7 (ptrval, (char *) &ftv, sizeof ftv);
      if (retlength != sizeof ftv)
	{
	  FUNC4 (-1);
	  return;
	}
    }
  FUNC5 (ret);
}