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
struct eap_method {int /*<<< orphan*/  (* free ) (struct eap_method*) ;void* dl_handle; struct eap_method* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 struct eap_method* eap_methods ; 
 int /*<<< orphan*/  FUNC1 (struct eap_method*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_method*) ; 

void FUNC3(void)
{
	struct eap_method *m;
#ifdef CONFIG_DYNAMIC_EAP_METHODS
	void *handle;
#endif /* CONFIG_DYNAMIC_EAP_METHODS */

	while (eap_methods) {
		m = eap_methods;
		eap_methods = eap_methods->next;

#ifdef CONFIG_DYNAMIC_EAP_METHODS
		handle = m->dl_handle;
#endif /* CONFIG_DYNAMIC_EAP_METHODS */

		if (m->free)
			m->free(m);
		else
			FUNC1(m);

#ifdef CONFIG_DYNAMIC_EAP_METHODS
		if (handle)
			dlclose(handle);
#endif /* CONFIG_DYNAMIC_EAP_METHODS */
	}
}