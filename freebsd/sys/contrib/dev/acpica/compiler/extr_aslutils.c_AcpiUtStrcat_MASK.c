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
typedef  int UINT32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 

char *
FUNC3 (
    char                    *String1,
    char                    *String2)
{
    UINT32                  String1Length = FUNC2 (String1);
    char                    *NewString = (char *) FUNC0 (FUNC2 (String1) + FUNC2 (String2) + 1);

    FUNC1 (NewString, String1);
    FUNC1 (NewString + String1Length, String2);
    return (NewString);
}