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
 char* FUNC0 (char*,char*) ; 
 char* FUNC1 (char*,int) ; 

__attribute__((used)) static char *
FUNC2(char *bufptr, int c1, int c2)
{
    bufptr = FUNC0(bufptr, "%>");
    bufptr = FUNC1(bufptr, c1);
    bufptr = FUNC1(bufptr, c2);
    return bufptr;
}