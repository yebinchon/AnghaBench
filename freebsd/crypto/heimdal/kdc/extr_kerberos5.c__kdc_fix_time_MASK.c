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
typedef  scalar_t__ time_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__ MAX_TIME ; 

void
FUNC1(time_t **t)
{
    if(*t == NULL){
	FUNC0(*t);
	**t = MAX_TIME;
    }
    if(**t == 0) **t = MAX_TIME; /* fix for old clients */
}