#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WOLFSSL_X509 ;
struct TYPE_3__ {int type; scalar_t__ obj; } ;
typedef  TYPE_1__ WOLFSSL_ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ALT_NAMES_OID ; 
 scalar_t__ FUNC0 (char const*,scalar_t__,size_t) ; 
 size_t FUNC1 (char*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 TYPE_1__* FUNC5 (void*,int) ; 

__attribute__((used)) static int FUNC6(WOLFSSL_X509 *cert, int type,
					   const char *value, size_t len)
{
	WOLFSSL_ASN1_OBJECT *gen;
	void *ext;
	int found = 0;
	int i;

	ext = FUNC2(cert, ALT_NAMES_OID, NULL, NULL);

	for (i = 0; ext && i < FUNC4(ext); i++) {
		gen = FUNC5(ext, i);
		if (gen->type != type)
			continue;
		if (FUNC1((char *) gen->obj) == len &&
		    FUNC0(value, gen->obj, len) == 0)
			found++;
	}

	FUNC3(ext);

	return found;
}