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
struct ptunit_result {int dummy; } ;
struct pt_insn_decoder {int dummy; } ;
struct pt_insn {int dummy; } ;
typedef  int /*<<< orphan*/  insn ;

/* Variables and functions */
 int FUNC0 (struct pt_insn_decoder*,struct pt_insn*,int) ; 
 int /*<<< orphan*/  pte_invalid ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 

__attribute__((used)) static struct ptunit_result FUNC3(void)
{
	struct pt_insn_decoder decoder;
	struct pt_insn insn;
	int errcode;

	errcode = FUNC0(NULL, &insn, sizeof(insn));
	FUNC1(errcode, -pte_invalid);

	errcode = FUNC0(&decoder, NULL, sizeof(insn));
	FUNC1(errcode, -pte_invalid);

	return FUNC2();
}