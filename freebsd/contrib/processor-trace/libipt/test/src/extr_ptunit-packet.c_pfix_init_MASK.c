#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ptunit_result {int dummy; } ;
struct TYPE_5__ {struct packet_fixture* context; int /*<<< orphan*/  callback; } ;
struct TYPE_6__ {int size; TYPE_1__ decode; struct TYPE_6__* end; struct TYPE_6__* begin; } ;
struct packet_fixture {scalar_t__ unknown; int /*<<< orphan*/  decoder; TYPE_2__ config; int /*<<< orphan*/  encoder; TYPE_2__* buffer; TYPE_2__* packet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pfix_decode_unknown ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC5 () ; 

__attribute__((used)) static struct ptunit_result FUNC6(struct packet_fixture *pfix)
{
	int errcode;

	FUNC0(pfix->buffer, 0, sizeof(pfix->buffer));
	FUNC0(pfix->packet, 0, sizeof(pfix->packet));
	FUNC0(&pfix->config, 0, sizeof(pfix->config));
	pfix->config.size = sizeof(pfix->config);
	pfix->config.begin = pfix->buffer;
	pfix->config.end = pfix->buffer + sizeof(pfix->buffer);
	pfix->config.decode.callback = pfix_decode_unknown;
	pfix->config.decode.context = pfix;

	FUNC1(&pfix->encoder, &pfix->config);
	FUNC2(&pfix->decoder, &pfix->config);

	errcode = FUNC3(&pfix->decoder, 0x0ull);
	FUNC4(errcode, 0);

	pfix->unknown = 0;

	return FUNC5();
}