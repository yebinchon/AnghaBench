#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dbm_macro {void* pp; void* value; } ;
typedef  size_t int32_t ;
struct TYPE_2__ {int /*<<< orphan*/  pages; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 size_t MACRO_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__** macros ; 
 size_t* nvals ; 

struct dbm_macro *
FUNC2(int32_t im, int32_t iv)
{
	static struct dbm_macro macro;

	FUNC0(im >= 0);
	FUNC0(im < MACRO_MAX);
	FUNC0(iv >= 0);
	FUNC0(iv < nvals[im]);
	macro.value = FUNC1(macros[im][iv].value);
	macro.pp = FUNC1(macros[im][iv].pages);
	return &macro;
}