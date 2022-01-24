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
struct wpa_config {int /*<<< orphan*/  hessid; } ;
struct global_parse_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char const*) ; 

__attribute__((used)) static int FUNC2(
	const struct global_parse_data *data,
	struct wpa_config *config, int line, const char *pos)
{
	if (FUNC0(pos, config->hessid) < 0) {
		FUNC1(MSG_ERROR, "Line %d: Invalid hessid '%s'",
			   line, pos);
		return -1;
	}

	return 0;
}