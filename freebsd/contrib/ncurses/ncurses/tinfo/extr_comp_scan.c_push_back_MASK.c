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
 int /*<<< orphan*/  _nc_curr_col ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* bufptr ; 
 char* bufstart ; 

__attribute__((used)) static void
FUNC1(int c)
/* push a character back onto the input stream */
{
    if (bufptr == bufstart)
	FUNC0("Can't backspace off beginning of line");
    *--bufptr = (char) c;
    _nc_curr_col--;
}