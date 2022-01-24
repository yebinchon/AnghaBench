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
typedef  int u_int ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 char* FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(char **name, char **infotxt, u_int *numprompts,
    char ***prompts, u_int **echo_on)
{
	*name = FUNC1("");
	*infotxt = FUNC1("");
	*numprompts = 1;
	*prompts = FUNC0(*numprompts, sizeof(char *));
	*echo_on = FUNC0(*numprompts, sizeof(u_int));
	(*echo_on)[0] = 0;
}