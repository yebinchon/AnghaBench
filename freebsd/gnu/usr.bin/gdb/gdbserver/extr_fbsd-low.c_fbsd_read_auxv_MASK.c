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
typedef  scalar_t__ off_t ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int inferior_pid ; 
 scalar_t__ FUNC1 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 

__attribute__((used)) static int
FUNC5 (CORE_ADDR offset, char *myaddr, unsigned int len)
{
  char filename[PATH_MAX];
  int fd, n;

  FUNC4 (filename, sizeof filename, "/proc/%d/auxv", inferior_pid);

  fd = FUNC2 (filename, O_RDONLY);
  if (fd < 0)
    return -1;

  if (offset != (CORE_ADDR) 0
      && FUNC1 (fd, (off_t) offset, SEEK_SET) != (off_t) offset)
    n = -1;
  else
    n = FUNC3 (fd, myaddr, len);

  FUNC0 (fd);

  return n;
}