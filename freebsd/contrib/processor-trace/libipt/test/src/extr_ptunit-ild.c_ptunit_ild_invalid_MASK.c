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
struct ptunit_result {int dummy; } ;
struct pt_insn_ext {int mode; int /*<<< orphan*/  size; int /*<<< orphan*/  raw; } ;
struct pt_insn {int mode; int /*<<< orphan*/  size; int /*<<< orphan*/  raw; } ;
typedef  int /*<<< orphan*/  insn ;
typedef  int /*<<< orphan*/  iext ;
typedef  enum pt_exec_mode { ____Placeholder_pt_exec_mode } pt_exec_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_insn_ext*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct pt_insn_ext*,struct pt_insn_ext*) ; 
 int /*<<< orphan*/  pte_bad_insn ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC4 () ; 

__attribute__((used)) static struct ptunit_result FUNC5(uint8_t *raw, uint8_t size,
					       enum pt_exec_mode mode)
{
	struct pt_insn_ext iext;
	struct pt_insn insn;
	int errcode;

	FUNC1(&iext, 0, sizeof(iext));
	FUNC1(&insn, 0, sizeof(insn));

	FUNC0(insn.raw, raw, size);
	insn.size = size;
	insn.mode = mode;

	errcode = FUNC2(&insn, &iext);
	FUNC3(errcode, -pte_bad_insn);

	return FUNC4();
}