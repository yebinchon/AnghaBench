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
struct direct {scalar_t__ d_reclen; } ;

/* Variables and functions */
 scalar_t__ DIRBLKSIZ ; 
 int /*<<< orphan*/  df ; 
 scalar_t__ dirbuf ; 
 int /*<<< orphan*/  dirfile ; 
 scalar_t__ dirloc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ prev ; 
 int /*<<< orphan*/  seekpt ; 

__attribute__((used)) static void
FUNC3(void)
{
	((struct direct *)(dirbuf + prev))->d_reclen = DIRBLKSIZ - prev;
	if (FUNC2(dirbuf, (int)dirloc, 1, df) != 1)
		FUNC0(dirfile);
	seekpt = FUNC1(df);
	dirloc = 0;
}