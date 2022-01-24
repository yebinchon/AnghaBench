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
 int /*<<< orphan*/  FUNC0 (struct wpa_config*,int /*<<< orphan*/ ) ; 

void FUNC1(struct wpa_config *config,
			 struct wpa_config_blob *blob)
{
	FUNC0(config, blob->name);
	blob->next = config->blobs;
	config->blobs = blob;
}