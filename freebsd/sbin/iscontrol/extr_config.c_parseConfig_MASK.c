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
typedef  int /*<<< orphan*/  isc_opt_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,char**,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ vflag ; 

void
FUNC3(FILE *fd, char *key, isc_opt_t *op)
{
     char	*Ar[256];
     int	cc;

     cc = 256;
     if(FUNC0(fd, key, Ar, &cc))
	  FUNC1(cc, Ar, op);
     if(vflag)
	  FUNC2(op);
}