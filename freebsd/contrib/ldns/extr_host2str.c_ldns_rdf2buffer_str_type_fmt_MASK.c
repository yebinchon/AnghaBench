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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_output_format ;
typedef  int /*<<< orphan*/  ldns_buffer ;
struct TYPE_2__ {scalar_t__ _name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (scalar_t__) ; 

__attribute__((used)) static ldns_status
FUNC6(ldns_buffer *output,
		const ldns_output_format* fmt, const ldns_rdf *rdf)
{
        uint16_t data = FUNC4(FUNC3(rdf));

	if (! FUNC2(fmt, data) &&
			FUNC5(data) &&
			FUNC5(data)->_name) {

		FUNC0(output, "%s",FUNC5(data)->_name);
	} else {
		FUNC0(output, "TYPE%u", data);
	}
	return  FUNC1(output);
}