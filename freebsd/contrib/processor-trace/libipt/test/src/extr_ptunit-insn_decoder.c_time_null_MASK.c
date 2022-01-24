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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ptunit_result {int dummy; } ;
struct pt_insn_decoder {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_insn_decoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pte_invalid ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 

__attribute__((used)) static struct ptunit_result FUNC3(void)
{
	struct pt_insn_decoder decoder;
	uint64_t time;
	uint32_t lost_mtc, lost_cyc;
	int errcode;

	errcode = FUNC0(NULL, &time, &lost_mtc, &lost_cyc);
	FUNC1(errcode, -pte_invalid);

	errcode = FUNC0(&decoder, NULL, &lost_mtc, &lost_cyc);
	FUNC1(errcode, -pte_invalid);

	return FUNC2();
}