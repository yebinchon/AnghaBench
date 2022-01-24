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
struct pt_query_decoder {int dummy; } ;
struct pt_config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_query_decoder*) ; 
 struct pt_query_decoder* FUNC1 (int) ; 
 int FUNC2 (struct pt_query_decoder*,struct pt_config const*) ; 

struct pt_query_decoder *FUNC3(const struct pt_config *config)
{
	struct pt_query_decoder *decoder;
	int errcode;

	decoder = FUNC1(sizeof(*decoder));
	if (!decoder)
		return NULL;

	errcode = FUNC2(decoder, config);
	if (errcode < 0) {
		FUNC0(decoder);
		return NULL;
	}

	return decoder;
}