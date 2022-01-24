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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  ldns_rr ;
typedef  int /*<<< orphan*/  ldns_rdf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 

ldns_rdf *
FUNC6(const ldns_rr *nsec, const ldns_rdf *name)
{
	uint8_t algorithm;
	uint16_t iterations;
	uint8_t salt_length;
	uint8_t *salt = 0;

	ldns_rdf *hashed_owner;

	algorithm = FUNC1(nsec);
	salt_length = FUNC5(nsec);
	salt = FUNC4(nsec);
	iterations = FUNC3(nsec);

	hashed_owner = FUNC2(name,
								 algorithm,
								 iterations,
								 salt_length,
								 salt);

	FUNC0(salt);
	return hashed_owner;
}