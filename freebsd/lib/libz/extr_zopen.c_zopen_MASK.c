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
typedef  int /*<<< orphan*/ * gzFile ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char const*) ; 
 int /*<<< orphan*/  xgzclose ; 
 int /*<<< orphan*/ * xgzread ; 
 int /*<<< orphan*/  xgzseek ; 
 int /*<<< orphan*/ * xgzwrite ; 

FILE *
FUNC2(const char *fname, const char *mode)
{
    gzFile gz = FUNC1(fname, mode);
    if(gz == NULL)
	return NULL;

    if(*mode == 'r')
	return (FUNC0(gz, xgzread, NULL, xgzseek, xgzclose));
    else
	return (FUNC0(gz, NULL, xgzwrite, xgzseek, xgzclose));
}