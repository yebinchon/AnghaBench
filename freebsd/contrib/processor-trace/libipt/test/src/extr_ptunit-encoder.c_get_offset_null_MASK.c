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
struct ptunit_result {int dummy; } ;
struct pt_encoder {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pte_invalid ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 

__attribute__((used)) static struct ptunit_result FUNC3(void)
{
	struct pt_encoder encoder;
	uint64_t offset;
	int errcode;

	errcode = FUNC0(NULL, &offset);
	FUNC1(errcode, -pte_invalid);

	errcode = FUNC0(&encoder, NULL);
	FUNC1(errcode, -pte_invalid);

	return FUNC2();
}