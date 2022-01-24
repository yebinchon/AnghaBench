#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char isc_uint32_t ;
typedef  int /*<<< orphan*/  isc_time_t ;
typedef  scalar_t__ isc_result_t ;
struct TYPE_4__ {int /*<<< orphan*/  kbd; } ;
typedef  TYPE_1__ isc_entropysource_t ;
typedef  int /*<<< orphan*/  isc_boolean_t ;

/* Variables and functions */
 scalar_t__ ISC_R_NOTBLOCKING ; 
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,unsigned char,unsigned char) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned char*) ; 
 unsigned char FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static isc_result_t
FUNC7(isc_entropysource_t *source, void *arg, isc_boolean_t blocking) {
	isc_result_t result;
	isc_time_t t;
	isc_uint32_t sample;
	isc_uint32_t extra;
	unsigned char c;

	FUNC1(arg);

	if (!blocking)
		return (ISC_R_NOTBLOCKING);

	result = FUNC5(&source->kbd, &c);
	if (result != ISC_R_SUCCESS)
		return (result);

	FUNC0(&t);

	sample = FUNC6(&t);
	extra = c;

	result = FUNC4(source, sample, extra);
	if (result != ISC_R_SUCCESS) {
		FUNC3(stderr, "\r\n");
		return (result);
	}

	FUNC3(stderr, ".");
	FUNC2(stderr);

	return (result);
}