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
struct pt_query_decoder {int enabled; int /*<<< orphan*/  config; int /*<<< orphan*/  pos; int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ptunit_result FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pt_query_decoder*) ; 

__attribute__((used)) static struct ptunit_result FUNC3(struct pt_query_decoder *decoder)
{
	FUNC2(decoder);
	decoder->enabled = 1;

	(void) FUNC0(&decoder->next, decoder->pos, &decoder->config);
	return FUNC1();
}