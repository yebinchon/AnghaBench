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
struct setlist {int dummy; } ;

/* Variables and functions */
 scalar_t__ Setlist ; 
 scalar_t__ FUNC0 (char*,char**,int) ; 

__attribute__((used)) static struct setlist *
FUNC1(char *name)
{
    return (struct setlist *)
		FUNC0(name, (char **) Setlist, sizeof(struct setlist));
}