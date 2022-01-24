#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char const* name; int /*<<< orphan*/  bitlen; int /*<<< orphan*/  def_dump_fn; } ;
typedef  TYPE_1__ ib_field_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,void*,int) ; 

__attribute__((used)) static int FUNC2(const ib_field_t * f, const char *name, void *val,
			    int valsz)
{
	return FUNC1(f->def_dump_fn, name ? name : f->name, val,
			 valsz ? valsz : FUNC0(f->bitlen, 8) / 8);
}