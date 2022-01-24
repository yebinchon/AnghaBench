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
struct bgscan_learn_data {int /*<<< orphan*/  fname; void* long_interval; void* signal_threshold; void* short_interval; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 void* FUNC0 (char const*) ; 
 char* FUNC1 (char const*,char) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct bgscan_learn_data *data,
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
		FUNC3(MSG_ERROR, "bgscan learn: Missing scan interval "
			   "for high signal");
		return -1;
	}
	pos++;
	data->long_interval = FUNC0(pos);
	pos = FUNC1(pos, ':');
	if (pos) {
		pos++;
		data->fname = FUNC2(pos);
	}

	return 0;
}