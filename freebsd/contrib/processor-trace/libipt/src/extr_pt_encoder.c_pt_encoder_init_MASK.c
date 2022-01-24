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
struct TYPE_2__ {int /*<<< orphan*/  begin; } ;
struct pt_encoder {TYPE_1__ config; int /*<<< orphan*/  pos; } ;
struct pt_config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_encoder*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_1__*,struct pt_config const*) ; 
 int pte_invalid ; 

int FUNC2(struct pt_encoder *encoder, const struct pt_config *config)
{
	int errcode;

	if (!encoder)
		return -pte_invalid;

	FUNC0(encoder, 0, sizeof(*encoder));

	errcode = FUNC1(&encoder->config, config);
	if (errcode < 0)
		return errcode;

	encoder->pos = encoder->config.begin;

	return 0;
}