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
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  fd ;

/* Variables and functions */
 int /*<<< orphan*/  do_close_cleanup ; 
 struct cleanup* FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int* FUNC1 (int) ; 

struct cleanup *
FUNC2 (int fd)
{
  int *saved_fd = FUNC1 (sizeof (fd));
  *saved_fd = fd;
  return FUNC0 (do_close_cleanup, saved_fd);
}