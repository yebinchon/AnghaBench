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
 char FUNC0 (unsigned char) ; 

void FUNC1(char *string)
{
    int i;

    for (i = 0; string[i] != '\0'; i++)
        string[i] = FUNC0((unsigned char)string[i]);
}