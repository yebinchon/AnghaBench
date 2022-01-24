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
struct getarg_strings {int num_strings; char** strings; } ;

/* Variables and functions */
 char** FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (char****,size_t*,char**,int /*<<< orphan*/ ,int) ; 

char ***
FUNC3(struct getarg_strings *strings, size_t *size)
{
    char **list, ***all = NULL;
    int i;

    *size = 0;

    list = FUNC0(strings->num_strings, sizeof(*list));
    for (i = 0; i < strings->num_strings; i++)
	list[i] = strings->strings[i];

    FUNC2(&all, size, list, 0, strings->num_strings);
    FUNC1(list);
    return all;
}