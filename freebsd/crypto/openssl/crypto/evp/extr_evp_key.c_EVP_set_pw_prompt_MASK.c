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
 char* prompt_string ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 

void FUNC1(const char *prompt)
{
    if (prompt == NULL)
        prompt_string[0] = '\0';
    else {
        FUNC0(prompt_string, prompt, 79);
        prompt_string[79] = '\0';
    }
}