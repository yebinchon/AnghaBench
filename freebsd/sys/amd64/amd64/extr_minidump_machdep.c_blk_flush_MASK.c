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
struct dumperinfo {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dumperinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  dump_va ; 
 scalar_t__ fragsz ; 

__attribute__((used)) static int
FUNC1(struct dumperinfo *di)
{
	int error;

	if (fragsz == 0)
		return (0);

	error = FUNC0(di, dump_va, 0, fragsz);
	fragsz = 0;
	return (error);
}