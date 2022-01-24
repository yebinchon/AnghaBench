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
struct pt_query_decoder {int /*<<< orphan*/  evq; int /*<<< orphan*/  tcal; int /*<<< orphan*/  last_time; int /*<<< orphan*/  time; int /*<<< orphan*/  tnt; int /*<<< orphan*/  ip; int /*<<< orphan*/  config; } ;
struct pt_config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_query_decoder*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct pt_config const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int pte_invalid ; 

int FUNC7(struct pt_query_decoder *decoder,
			const struct pt_config *config)
{
	int errcode;

	if (!decoder)
		return -pte_invalid;

	FUNC0(decoder, 0, sizeof(*decoder));

	errcode = FUNC1(&decoder->config, config);
	if (errcode < 0)
		return errcode;

	FUNC3(&decoder->ip);
	FUNC6(&decoder->tnt);
	FUNC5(&decoder->time);
	FUNC5(&decoder->last_time);
	FUNC4(&decoder->tcal);
	FUNC2(&decoder->evq);

	return 0;
}