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
 char* FUNC0 (size_t,int) ; 
 int FUNC1 (char*) ; 
 char* path ; 
 size_t pathlen ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static int
FUNC4 (const char *dir, const char *file)
{
  int status;
  int slash;
  size_t dirlen = FUNC3 (dir);
  size_t filelen = FUNC3 (file);
  if ((dirlen + filelen + 2) > pathlen)
    {
      path = FUNC0 (dirlen + 1 + filelen + 1, sizeof (*path));
      pathlen = dirlen + filelen + 2;
    }
  FUNC2 (path, dir);
  slash = (path[dirlen] != '/');
  path[dirlen] = '/';
  FUNC2 (path + dirlen + slash , file);
  status  = FUNC1 (path);
  return status;
}