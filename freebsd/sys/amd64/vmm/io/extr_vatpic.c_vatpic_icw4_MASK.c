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
typedef  int uint8_t ;
struct vatpic {int dummy; } ;
struct atpic {int aeoi; int sfn; int ready; scalar_t__ icw_num; } ;

/* Variables and functions */
 int ICW4_8086 ; 
 int ICW4_AEOI ; 
 int ICW4_SFNM ; 
 int /*<<< orphan*/  FUNC0 (struct vatpic*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vatpic*,char*,int) ; 
 scalar_t__ FUNC2 (struct vatpic*,struct atpic*) ; 

__attribute__((used)) static int
FUNC3(struct vatpic *vatpic, struct atpic *atpic, uint8_t val)
{
	FUNC1(vatpic, "atpic icw4 0x%x", val);

	if ((val & ICW4_8086) == 0) {
		FUNC0(vatpic, "vatpic microprocessor mode required");
		return (-1);
	}

	if ((val & ICW4_AEOI) != 0)
		atpic->aeoi = true;

	if ((val & ICW4_SFNM) != 0) {
		if (FUNC2(vatpic, atpic)) {
			atpic->sfn = true;
		} else {
			FUNC1(vatpic, "Ignoring special fully nested "
			    "mode on slave atpic: %#x", val);
		}
	}

	atpic->icw_num = 0;
	atpic->ready = true;

	return (0);
}