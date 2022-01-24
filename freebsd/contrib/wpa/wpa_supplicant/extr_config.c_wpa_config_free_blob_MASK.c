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
struct wpa_config_blob {int /*<<< orphan*/  len; int /*<<< orphan*/  data; struct wpa_config_blob* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_config_blob*) ; 

void FUNC2(struct wpa_config_blob *blob)
{
	if (blob) {
		FUNC1(blob->name);
		FUNC0(blob->data, blob->len);
		FUNC1(blob);
	}
}