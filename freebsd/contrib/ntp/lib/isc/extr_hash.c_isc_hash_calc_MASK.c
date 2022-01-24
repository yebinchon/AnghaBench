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
typedef  int /*<<< orphan*/  isc_boolean_t ;
struct TYPE_4__ {unsigned int limit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 TYPE_1__* hash ; 
 unsigned int FUNC3 (TYPE_1__*,unsigned char const*,unsigned int,int /*<<< orphan*/ ) ; 

unsigned int
FUNC4(const unsigned char *key, unsigned int keylen,
	      isc_boolean_t case_sensitive)
{
	FUNC0(hash != NULL && FUNC2(hash));
	FUNC1(keylen <= hash->limit);

	return (FUNC3(hash, key, keylen, case_sensitive));
}