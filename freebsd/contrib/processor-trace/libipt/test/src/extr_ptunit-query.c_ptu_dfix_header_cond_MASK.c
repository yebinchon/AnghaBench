#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ptunit_result {int dummy; } ;
struct pt_encoder {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  begin; } ;
struct pt_query_decoder {TYPE_1__ config; int /*<<< orphan*/  pos; } ;
struct ptu_decoder_fixture {struct pt_encoder encoder; struct pt_query_decoder decoder; } ;

/* Variables and functions */
 int /*<<< orphan*/  pt_dfix_sext_ip ; 
 int /*<<< orphan*/  FUNC0 (struct pt_encoder*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_encoder*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pt_encoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_encoder*) ; 
 int /*<<< orphan*/  FUNC4 (struct pt_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (struct pt_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pt_ipc_sext_48 ; 
 struct ptunit_result FUNC6 () ; 

__attribute__((used)) static struct ptunit_result
FUNC7(struct ptu_decoder_fixture *dfix)
{
	struct pt_query_decoder *decoder = &dfix->decoder;
	struct pt_encoder *encoder = &dfix->encoder;

	/* The psb must be empty since the tests won't skip status events.
	 * On the other hand, we do need to provide an address since tests
	 * may want to update last-ip, which requires a last-ip, of course.
	 */
	FUNC2(encoder);
	FUNC1(encoder, 1);
	FUNC3(encoder);
	FUNC5(encoder, 0);
	FUNC2(encoder);
	FUNC0(encoder, pt_dfix_sext_ip, pt_ipc_sext_48);
	FUNC4(encoder);
	FUNC2(encoder);
	FUNC5(encoder, 0);
	FUNC2(encoder);

	/* Synchronize the decoder at the beginning of the buffer. */
	decoder->pos = decoder->config.begin;

	return FUNC6();
}