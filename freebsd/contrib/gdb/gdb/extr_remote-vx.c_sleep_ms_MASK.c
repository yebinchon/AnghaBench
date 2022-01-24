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
struct timeval {long tv_usec; scalar_t__ tv_sec; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

__attribute__((used)) static void
FUNC2 (long ms)
{
  struct timeval select_timeout;
  int status;

  select_timeout.tv_sec = 0;
  select_timeout.tv_usec = ms * 1000;

  status = FUNC1 (0, (fd_set *) 0, (fd_set *) 0, (fd_set *) 0,
		   &select_timeout);

  if (status < 0 && errno != EINTR)
    FUNC0 ("select");
}