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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC1 (char const*,struct stat*) ; 

__attribute__((used)) static int
FUNC2 (const char *name)
{
  struct stat st;
  const int status = FUNC1 (name, &st);

  /* Stat should never fail except when the file does not exist.
     If stat fails, analyze the source of error and return True
     unless the file does not exist, to avoid returning false results
     on obscure systems where stat does not work as expected.
   */
  if (status != 0)
    return (errno != ENOENT);

  return FUNC0 (st.st_mode);
}