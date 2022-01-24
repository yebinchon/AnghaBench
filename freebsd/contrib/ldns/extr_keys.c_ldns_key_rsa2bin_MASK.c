#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/ * e; int /*<<< orphan*/ * n; } ;
typedef  TYPE_1__ RSA ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*,unsigned char*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,scalar_t__) ; 

__attribute__((used)) static bool
FUNC4(unsigned char *data, RSA *k, uint16_t *size)
{
	int i,j;
	const BIGNUM *n=NULL, *e=NULL;
	
	if (!k) {
		return false;
	}
#if OPENSSL_VERSION_NUMBER < 0x10100000 || defined(HAVE_LIBRESSL)
	n = k->n;
	e = k->e;
#else
	RSA_get0_key(k, &n, &e, NULL);
#endif
	
	if (FUNC1(e) <= 256) {
		/* normally only this path is executed (small factors are
		 * more common 
		 */
		data[0] = (unsigned char) FUNC1(e);
		i = FUNC0(e, data + 1);  
		j = FUNC0(n, data + i + 1);
		*size = (uint16_t) i + j;
	} else if (FUNC1(e) <= 65536) {
		data[0] = 0;
		/* BN_bn2bin does bigendian, _uint16 also */
		FUNC3(data + 1, (uint16_t) FUNC1(e)); 

		FUNC0(e, data + 3); 
		FUNC0(n, data + 4 + FUNC1(e));
		*size = (uint16_t) FUNC1(n) + 6;
	} else {
		return false;
	}
	return true;
}