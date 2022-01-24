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
struct hostent_data {int dummy; } ;

/* Variables and functions */
 struct hostent_data* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct hostent_data*) ; 

void
FUNC3(int stayopen)
{
	struct hostent_data *hed;

	if ((hed = FUNC0()) == NULL)
		return;
	FUNC2(stayopen, hed);
	FUNC1(stayopen);
}