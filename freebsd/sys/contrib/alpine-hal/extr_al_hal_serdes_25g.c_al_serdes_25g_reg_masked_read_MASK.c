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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct al_serdes_grp_obj {int dummy; } ;
typedef  enum al_serdes_reg_page { ____Placeholder_al_serdes_reg_page } al_serdes_reg_page ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct al_serdes_grp_obj*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(
	struct al_serdes_grp_obj	*obj,
	enum al_serdes_reg_page		page,
	uint16_t			offset,
	uint8_t				mask,
	uint8_t				shift,
	uint8_t				*data)
{
	uint8_t val;
	int status = 0;

	status = FUNC1(obj, page, 0, offset, &val);
	if (status)
		return status;

	*data = FUNC0(val, mask, shift);

	return 0;
}