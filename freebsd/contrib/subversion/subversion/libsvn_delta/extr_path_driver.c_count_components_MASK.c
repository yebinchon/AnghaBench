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
 char* FUNC0 (char const*,char) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static int
FUNC2(const char *path)
{
  int count = 1;
  const char *instance = path;

  if ((FUNC1(path) == 1) && (path[0] == '/'))
    return 0;

  do
    {
      instance++;
      instance = FUNC0(instance, '/');
      if (instance)
        count++;
    }
  while (instance);

  return count;
}