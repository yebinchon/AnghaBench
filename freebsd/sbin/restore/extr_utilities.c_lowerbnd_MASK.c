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
struct entry {scalar_t__ e_type; int e_flags; } ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 int EXTRACT ; 
 int NEW ; 
 scalar_t__ NODE ; 
 struct entry* FUNC0 (scalar_t__) ; 
 scalar_t__ maxino ; 

ino_t
FUNC1(ino_t start)
{
	struct entry *ep;

	for ( ; start < maxino; start++) {
		ep = FUNC0(start);
		if (ep == NULL || ep->e_type == NODE)
			continue;
		if (ep->e_flags & (NEW|EXTRACT))
			return (start);
	}
	return (start);
}