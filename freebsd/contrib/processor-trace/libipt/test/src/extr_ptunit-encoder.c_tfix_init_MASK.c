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
struct pt_config {int /*<<< orphan*/ * end; int /*<<< orphan*/ * begin; } ;
struct test_fixture {int /*<<< orphan*/  encoder; int /*<<< orphan*/ * buffer; struct pt_config config; } ;
struct ptunit_result {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_config*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct pt_config*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC4 () ; 

__attribute__((used)) static struct ptunit_result FUNC5(struct test_fixture *tfix)
{
	struct pt_config *config;
	uint8_t *buffer;
	int errcode;

	config = &tfix->config;
	buffer = tfix->buffer;

	FUNC0(buffer, 0, sizeof(tfix->buffer));

	FUNC1(config);
	config->begin = buffer;
	config->end = buffer + sizeof(tfix->buffer);

	errcode = FUNC2(&tfix->encoder, config);
	FUNC3(errcode, 0);

	return FUNC4();
}