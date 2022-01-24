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
struct test_fixture {int /*<<< orphan*/  decoder; } ;
struct ptunit_result {int dummy; } ;
struct pt_config {int dummy; } ;

/* Variables and functions */
 struct pt_config* FUNC0 (int /*<<< orphan*/ *) ; 
 struct ptunit_result FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pt_config const*) ; 

__attribute__((used)) static struct ptunit_result FUNC3(struct test_fixture *tfix)
{
	const struct pt_config *config;

	config = FUNC0(&tfix->decoder);
	FUNC2(config);

	return FUNC1();
}