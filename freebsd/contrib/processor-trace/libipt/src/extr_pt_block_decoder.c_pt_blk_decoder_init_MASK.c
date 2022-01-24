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
struct pt_config {int /*<<< orphan*/  flags; } ;
struct pt_block_decoder {int /*<<< orphan*/  scache; int /*<<< orphan*/  default_image; int /*<<< orphan*/ * image; int /*<<< orphan*/  query; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_block_decoder*) ; 
 int FUNC2 (struct pt_config*,struct pt_config const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct pt_config*) ; 
 int pte_internal ; 

int FUNC6(struct pt_block_decoder *decoder,
			const struct pt_config *uconfig)
{
	struct pt_config config;
	int errcode;

	if (!decoder)
		return -pte_internal;

	errcode = FUNC2(&config, uconfig);
	if (errcode < 0)
		return errcode;

	/* The user supplied decoder flags. */
	decoder->flags = config.flags;

	/* Set the flags we need for the query decoder we use. */
	errcode = FUNC0(&config.flags, &decoder->flags);
	if (errcode < 0)
		return errcode;

	errcode = FUNC5(&decoder->query, &config);
	if (errcode < 0)
		return errcode;

	FUNC3(&decoder->default_image, NULL);
	decoder->image = &decoder->default_image;

	errcode = FUNC4(&decoder->scache);
	if (errcode < 0)
		return errcode;

	FUNC1(decoder);

	return 0;
}