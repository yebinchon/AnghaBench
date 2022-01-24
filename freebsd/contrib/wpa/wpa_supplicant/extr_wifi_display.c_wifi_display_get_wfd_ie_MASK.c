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
struct wpabuf {int dummy; } ;
struct wpa_global {scalar_t__* wfd_subelem; int /*<<< orphan*/ * p2p; } ;

/* Variables and functions */
 int MAX_WFD_SUBELEMS ; 
 struct wpabuf* FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,scalar_t__) ; 

struct wpabuf * FUNC3(struct wpa_global *global)
{
	struct wpabuf *ie;
	size_t len;
	int i;

	if (global->p2p == NULL)
		return NULL;

	len = 0;
	for (i = 0; i < MAX_WFD_SUBELEMS; i++) {
		if (global->wfd_subelem[i])
			len += FUNC1(global->wfd_subelem[i]);
	}

	ie = FUNC0(len);
	if (ie == NULL)
		return NULL;

	for (i = 0; i < MAX_WFD_SUBELEMS; i++) {
		if (global->wfd_subelem[i])
			FUNC2(ie, global->wfd_subelem[i]);
	}

	return ie;
}