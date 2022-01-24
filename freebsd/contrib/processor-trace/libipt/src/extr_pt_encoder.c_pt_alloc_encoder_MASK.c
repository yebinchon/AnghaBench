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
struct pt_encoder {int dummy; } ;
struct pt_config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_encoder*) ; 
 struct pt_encoder* FUNC1 (int) ; 
 int FUNC2 (struct pt_encoder*,struct pt_config const*) ; 

struct pt_encoder *FUNC3(const struct pt_config *config)
{
	struct pt_encoder *encoder;
	int errcode;

	encoder = FUNC1(sizeof(*encoder));
	if (!encoder)
		return NULL;

	errcode = FUNC2(encoder, config);
	if (errcode < 0) {
		FUNC0(encoder);
		return NULL;
	}

	return encoder;
}