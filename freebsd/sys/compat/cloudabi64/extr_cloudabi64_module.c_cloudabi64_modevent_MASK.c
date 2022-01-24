#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  module_t ;
struct TYPE_5__ {int /*<<< orphan*/  sysvec; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  _binary_cloudabi64_vdso_o_end ; 
 int /*<<< orphan*/  _binary_cloudabi64_vdso_o_start ; 
 TYPE_1__ cloudabi64_brand ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(module_t mod, int type, void *data)
{

	switch (type) {
	case MOD_LOAD:
		FUNC1(cloudabi64_brand.sysvec,
		    _binary_cloudabi64_vdso_o_start,
		    _binary_cloudabi64_vdso_o_end);
		if (FUNC3(&cloudabi64_brand) < 0) {
			FUNC5("Failed to add CloudABI ELF brand handler\n");
			return (EINVAL);
		}
		return (0);
	case MOD_UNLOAD:
		if (FUNC2(&cloudabi64_brand))
			return (EBUSY);
		if (FUNC4(&cloudabi64_brand) < 0) {
			FUNC5("Failed to remove CloudABI ELF brand handler\n");
			return (EINVAL);
		}
		FUNC0(cloudabi64_brand.sysvec);
		return (0);
	default:
		return (EOPNOTSUPP);
	}
}