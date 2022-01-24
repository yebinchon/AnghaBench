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
struct pkcs11_provider {int dummy; } ;

/* Variables and functions */
 struct pkcs11_provider* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pkcs11_provider*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC2 (struct pkcs11_provider*) ; 
 int /*<<< orphan*/  FUNC3 (struct pkcs11_provider*) ; 
 int /*<<< orphan*/  pkcs11_providers ; 

void
FUNC4(void)
{
	struct pkcs11_provider *p;

	while ((p = FUNC0(&pkcs11_providers)) != NULL) {
		FUNC1(&pkcs11_providers, p, next);
		FUNC2(p);
		FUNC3(p);
	}
}