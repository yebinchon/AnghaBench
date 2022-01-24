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
struct pt_query_decoder {int /*<<< orphan*/  evq; int /*<<< orphan*/  tcal; int /*<<< orphan*/  last_time; int /*<<< orphan*/  time; int /*<<< orphan*/  tnt; int /*<<< orphan*/  ip; int /*<<< orphan*/ * event; scalar_t__ consume_packet; scalar_t__ enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct pt_query_decoder *decoder)
{
	if (!decoder)
		return;

	decoder->enabled = 0;
	decoder->consume_packet = 0;
	decoder->event = NULL;

	FUNC1(&decoder->ip);
	FUNC4(&decoder->tnt);
	FUNC3(&decoder->time);
	FUNC3(&decoder->last_time);
	FUNC2(&decoder->tcal);
	FUNC0(&decoder->evq);
}