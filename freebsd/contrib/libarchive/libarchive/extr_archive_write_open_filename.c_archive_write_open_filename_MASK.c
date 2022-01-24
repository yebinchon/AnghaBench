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
struct archive {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct archive*,int) ; 
 int FUNC1 (struct archive*,int,char const*) ; 

int
FUNC2(struct archive *a, const char *filename)
{

	if (filename == NULL || filename[0] == '\0')
		return (FUNC0(a, 1));

	return (FUNC1(a, 1, filename));
}