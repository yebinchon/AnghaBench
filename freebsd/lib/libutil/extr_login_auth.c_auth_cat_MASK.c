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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int BUFSIZ ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int) ; 
 int FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC6(const char *file)
{
  int fd, count;
  char buf[BUFSIZ];

  if ((fd = FUNC2(file, O_RDONLY | O_CLOEXEC)) < 0)
    return 0;
  while ((count = FUNC3(fd, buf, sizeof(buf))) > 0)
    (void)FUNC5(FUNC1(stdout), buf, count);
  FUNC0(fd);
  FUNC4(5);	/* wait an arbitrary time to drain */
  return 1;
}