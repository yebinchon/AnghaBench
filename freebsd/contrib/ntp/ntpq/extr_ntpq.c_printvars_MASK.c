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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,size_t,char const*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ rawmode ; 
 int /*<<< orphan*/  FUNC1 (int,size_t,char const*,int,int,int /*<<< orphan*/ *) ; 

void
FUNC2(
	size_t length,
	const char *data,
	int status,
	int sttype,
	int quiet,
	FILE *fp
	)
{
	if (rawmode)
	    FUNC1(sttype, length, data, status, quiet, fp);
	else
	    FUNC0(sttype, length, data, status, quiet, fp);
}