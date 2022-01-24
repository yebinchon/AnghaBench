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
struct wpa_config_blob {struct wpa_config_blob* next; int /*<<< orphan*/  name; } ;
struct wpa_config {struct wpa_config_blob* blobs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_config_blob*) ; 

int FUNC2(struct wpa_config *config, const char *name)
{
	struct wpa_config_blob *pos = config->blobs, *prev = NULL;

	while (pos) {
		if (FUNC0(pos->name, name) == 0) {
			if (prev)
				prev->next = pos->next;
			else
				config->blobs = pos->next;
			FUNC1(pos);
			return 0;
		}
		prev = pos;
		pos = pos->next;
	}

	return -1;
}