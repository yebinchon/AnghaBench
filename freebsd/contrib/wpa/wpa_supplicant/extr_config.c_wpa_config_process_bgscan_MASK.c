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
struct wpa_config {int dummy; } ;
struct global_parse_data {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,size_t*) ; 
 int FUNC2 (struct global_parse_data const*,struct wpa_config*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const struct global_parse_data *data,
				     struct wpa_config *config, int line,
				     const char *pos)
{
	size_t len;
	char *tmp;
	int res;

	tmp = FUNC1(pos, &len);
	if (tmp == NULL) {
		FUNC3(MSG_ERROR, "Line %d: failed to parse %s",
			   line, data->name);
		return -1;
	}

	res = FUNC2(data, config, line, tmp);
	FUNC0(tmp);
	return res;
}