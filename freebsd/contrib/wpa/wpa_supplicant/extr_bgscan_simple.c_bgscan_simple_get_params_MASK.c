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
struct bgscan_simple_data {void* long_interval; void* signal_threshold; void* short_interval; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 void* FUNC0 (char const*) ; 
 char* FUNC1 (char const*,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct bgscan_simple_data *data,
				    const char *params)
{
	const char *pos;

	data->short_interval = FUNC0(params);

	pos = FUNC1(params, ':');
	if (pos == NULL)
		return 0;
	pos++;
	data->signal_threshold = FUNC0(pos);
	pos = FUNC1(pos, ':');
	if (pos == NULL) {
		FUNC2(MSG_ERROR, "bgscan simple: Missing scan interval "
			   "for high signal");
		return -1;
	}
	pos++;
	data->long_interval = FUNC0(pos);

	return 0;
}