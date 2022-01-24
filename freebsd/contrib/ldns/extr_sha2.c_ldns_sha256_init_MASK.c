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
struct TYPE_3__ {scalar_t__ bitcount; int /*<<< orphan*/  buffer; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ ldns_sha256_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_SHA256_BLOCK_LENGTH ; 
 int /*<<< orphan*/  LDNS_SHA256_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ldns_sha256_initial_hash_value ; 

void FUNC2(ldns_sha256_CTX* context) {
	if (context == (ldns_sha256_CTX*)0) {
		return;
	}
	FUNC0(context->state, ldns_sha256_initial_hash_value, LDNS_SHA256_DIGEST_LENGTH);
	FUNC1(context->buffer, LDNS_SHA256_BLOCK_LENGTH);
	context->bitcount = 0;
}