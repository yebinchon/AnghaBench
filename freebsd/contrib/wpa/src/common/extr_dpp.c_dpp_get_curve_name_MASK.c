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
struct dpp_curve_params {scalar_t__ jwk_crv; scalar_t__ name; } ;

/* Variables and functions */
 struct dpp_curve_params const* dpp_curves ; 
 scalar_t__ FUNC0 (char const*,scalar_t__) ; 

__attribute__((used)) static const struct dpp_curve_params *
FUNC1(const char *name)
{
	int i;

	for (i = 0; dpp_curves[i].name; i++) {
		if (FUNC0(name, dpp_curves[i].name) == 0 ||
		    (dpp_curves[i].jwk_crv &&
		     FUNC0(name, dpp_curves[i].jwk_crv) == 0))
			return &dpp_curves[i];
	}
	return NULL;
}