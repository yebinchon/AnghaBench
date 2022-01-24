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
 int /*<<< orphan*/  EBADF ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,int) ; 
 int sourcedesc ; 
 int sourceleft ; 
 int /*<<< orphan*/  sourceptr ; 

int
FUNC2 (int bufp, int numelts, int eltsize, int stream)
{
  int elts = FUNC1 (numelts, sourceleft / eltsize);
  int len = elts * eltsize;

  if (stream != sourcedesc)
    {
      errno = EBADF;
      return -1;
    }

  FUNC0 (bufp, sourceptr, len);
  sourceleft -= len;
  return elts;
}