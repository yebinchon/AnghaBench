#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* locale_t ;
struct TYPE_6__ {TYPE_1__** components; } ;
struct TYPE_5__ {char const* locale; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int XLC_LAST ; 
 int FUNC1 (int) ; 

const char *FUNC2(int mask, locale_t loc)
{
	int type = FUNC1(mask) - 1;
	FUNC0(loc);
	if (type >= XLC_LAST)
		return (NULL);
	if (loc->components[type])
		return (loc->components[type]->locale);
	return ("C");
}