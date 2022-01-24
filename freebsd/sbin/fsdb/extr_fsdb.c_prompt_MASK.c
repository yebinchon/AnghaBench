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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  pstring ;
typedef  int /*<<< orphan*/  EditLine ;

/* Variables and functions */
 scalar_t__ curinum ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ) ; 

char *
FUNC1(EditLine *el)
{
    static char pstring[64];
    FUNC0(pstring, sizeof(pstring), "fsdb (inum: %ju)> ",
	(uintmax_t)curinum);
    return pstring;
}