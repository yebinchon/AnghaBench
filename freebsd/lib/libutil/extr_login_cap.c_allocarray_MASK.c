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
 char const** internal_array ; 
 size_t internal_arraysz ; 
 char** FUNC0 (char const**,size_t,int) ; 

__attribute__((used)) static const char **
FUNC1(size_t sz)
{
    static const char    **p;

    if (sz <= internal_arraysz)
	p = internal_array;
    else if ((p = FUNC0(internal_array, sz, sizeof(char*))) != NULL) {
	internal_arraysz = sz;
	internal_array = p;
    }
    return p;
}