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
struct pt_config {int /*<<< orphan*/  begin; } ;
struct pt_query_decoder {int /*<<< orphan*/  pos; struct pt_config config; } ;
struct ptu_decoder_fixture {struct pt_query_decoder decoder; } ;
struct pt_event {int dummy; } ;
typedef  int /*<<< orphan*/  event ;

/* Variables and functions */
 int FUNC0 (struct pt_query_decoder*,struct pt_event*,int) ; 
 int /*<<< orphan*/  pte_invalid ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ptunit_result FUNC4(struct ptu_decoder_fixture *dfix)
{
	struct pt_query_decoder *decoder = &dfix->decoder;
	struct pt_config *config = &decoder->config;
	struct pt_event event;
	int errcode;

	errcode = FUNC0(NULL, &event, sizeof(event));
	FUNC1(errcode, -pte_invalid);

	errcode = FUNC0(decoder, NULL, sizeof(event));
	FUNC1(errcode, -pte_invalid);
	FUNC3(decoder->pos, config->begin);

	return FUNC2();
}