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
typedef  int /*<<< orphan*/  locale_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ fake_tls ; 
 int /*<<< orphan*/  init_key ; 
 int /*<<< orphan*/  locale_info_key ; 
 int /*<<< orphan*/  once_control ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  thread_local_locale ; 

__attribute__((used)) static locale_t
FUNC2(void)
{

	FUNC0(&once_control, init_key);
	
	return (fake_tls ? thread_local_locale :
		FUNC1(locale_info_key));
}