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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct pkcs11_provider*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC1 (struct pkcs11_provider*) ; 
 struct pkcs11_provider* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pkcs11_provider*) ; 
 int /*<<< orphan*/  pkcs11_providers ; 

int
FUNC4(char *provider_id)
{
	struct pkcs11_provider *p;

	if ((p = FUNC2(provider_id)) != NULL) {
		FUNC0(&pkcs11_providers, p, next);
		FUNC1(p);
		FUNC3(p);
		return (0);
	}
	return (-1);
}