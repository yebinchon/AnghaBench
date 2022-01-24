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
struct cpp_demangle_data {scalar_t__ push_head; int /*<<< orphan*/  output; int /*<<< orphan*/  output_tmp; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,size_t) ; 

__attribute__((used)) static int
FUNC1(struct cpp_demangle_data *ddata, const char *str,
    size_t len)
{

	if (ddata == NULL || str == NULL || len == 0)
		return (0);

	if (ddata->push_head > 0)
		return (FUNC0(&ddata->output_tmp, str, len));

	return (FUNC0(&ddata->output, str, len));
}