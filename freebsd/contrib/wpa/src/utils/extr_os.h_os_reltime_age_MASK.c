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
struct os_reltime {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct os_reltime*) ; 
 int /*<<< orphan*/  FUNC1 (struct os_reltime*,struct os_reltime*,struct os_reltime*) ; 

__attribute__((used)) static inline void FUNC2(struct os_reltime *start,
				  struct os_reltime *age)
{
	struct os_reltime now;

	FUNC0(&now);
	FUNC1(&now, start, age);
}