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
typedef  int uint32_t ;
struct vatpic {int dummy; } ;
struct atpic {int icw_num; scalar_t__ ready; } ;

/* Variables and functions */
 int ICU_IMR_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct vatpic*) ; 
 int /*<<< orphan*/  FUNC1 (struct vatpic*) ; 
 int FUNC2 (struct vatpic*,struct atpic*,int) ; 
 int FUNC3 (struct vatpic*,struct atpic*,int) ; 
 int FUNC4 (struct vatpic*,struct atpic*,int) ; 
 int FUNC5 (struct vatpic*,struct atpic*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vatpic*) ; 
 int FUNC7 (struct vatpic*,struct atpic*,int) ; 
 int FUNC8 (struct vatpic*,struct atpic*,int) ; 
 int FUNC9 (struct vatpic*,struct atpic*,int) ; 

__attribute__((used)) static int
FUNC10(struct vatpic *vatpic, struct atpic *atpic, bool in, int port,
    int bytes, uint32_t *eax)
{
	int error;
	uint8_t val;

	error = 0;
	val = *eax;

	FUNC0(vatpic);

	if (port & ICU_IMR_OFFSET) {
		switch (atpic->icw_num) {
		case 2:
			error = FUNC3(vatpic, atpic, val);
			break;
		case 3:
			error = FUNC4(vatpic, atpic, val);
			break;
		case 4:
			error = FUNC5(vatpic, atpic, val);
			break;
		default:
			error = FUNC7(vatpic, atpic, val);
			break;
		}
	} else {
		if (val & (1 << 4))
			error = FUNC2(vatpic, atpic, val);

		if (atpic->ready) {
			if (val & (1 << 3))
				error = FUNC9(vatpic, atpic, val);
			else
				error = FUNC8(vatpic, atpic, val);
		}
	}

	if (atpic->ready)
		FUNC6(vatpic);

	FUNC1(vatpic);

	return (error);
}