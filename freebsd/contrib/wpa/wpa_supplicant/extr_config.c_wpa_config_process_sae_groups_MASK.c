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
struct wpa_config {int* sae_groups; } ;
struct global_parse_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,char const*) ; 

__attribute__((used)) static int FUNC3(
	const struct global_parse_data *data,
	struct wpa_config *config, int line, const char *pos)
{
	int *groups = FUNC1(pos);
	if (groups == NULL) {
		FUNC2(MSG_ERROR, "Line %d: Invalid sae_groups '%s'",
			   line, pos);
		return -1;
	}

	FUNC0(config->sae_groups);
	config->sae_groups = groups;

	return 0;
}