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
struct xlocale_refcounted {int dummy; } ;
typedef  scalar_t__ locale_t ;

/* Variables and functions */
 scalar_t__ LC_GLOBAL_LOCALE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ __thread_locale ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ fake_tls ; 
 int /*<<< orphan*/  init_key ; 
 int /*<<< orphan*/  locale_info_key ; 
 int /*<<< orphan*/  once_control ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ thread_local_locale ; 
 int /*<<< orphan*/  FUNC4 (struct xlocale_refcounted*) ; 
 int /*<<< orphan*/  FUNC5 (struct xlocale_refcounted*) ; 

__attribute__((used)) static void
FUNC6(locale_t loc)
{
	locale_t l = (loc == LC_GLOBAL_LOCALE) ? 0 : loc;

	FUNC1(&once_control, init_key);
	
	if (NULL != l) {
		FUNC5((struct xlocale_refcounted*)l);
	}
	locale_t old = FUNC2(locale_info_key);
	if ((NULL != old) && (l != old)) {
		FUNC4((struct xlocale_refcounted*)old);
	}
	if (fake_tls) {
		thread_local_locale = l;
	} else {
		FUNC3(locale_info_key, l);
	}
#ifndef __NO_TLS
	__thread_locale = l;
	FUNC0(loc);
#endif
}