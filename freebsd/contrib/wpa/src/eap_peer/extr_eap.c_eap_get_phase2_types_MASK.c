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
typedef  scalar_t__ u32 ;
struct eap_peer_config {int /*<<< orphan*/ * private_key2; } ;
struct eap_method_type {int vendor; scalar_t__ method; } ;
struct eap_method {int vendor; scalar_t__ method; struct eap_method* next; } ;

/* Variables and functions */
 scalar_t__ EAP_TYPE_TLS ; 
 int EAP_VENDOR_IETF ; 
 scalar_t__ FUNC0 (int,scalar_t__) ; 
 struct eap_method* FUNC1 (size_t*) ; 
 struct eap_method_type* FUNC2 (size_t) ; 

struct eap_method_type * FUNC3(struct eap_peer_config *config,
					      size_t *count)
{
	struct eap_method_type *buf;
	u32 method;
	int vendor;
	size_t mcount;
	const struct eap_method *methods, *m;

	methods = FUNC1(&mcount);
	if (methods == NULL)
		return NULL;
	*count = 0;
	buf = FUNC2(mcount * sizeof(struct eap_method_type));
	if (buf == NULL)
		return NULL;

	for (m = methods; m; m = m->next) {
		vendor = m->vendor;
		method = m->method;
		if (FUNC0(vendor, method)) {
			if (vendor == EAP_VENDOR_IETF &&
			    method == EAP_TYPE_TLS && config &&
			    config->private_key2 == NULL)
				continue;
			buf[*count].vendor = vendor;
			buf[*count].method = method;
			(*count)++;
		}
	}

	return buf;
}