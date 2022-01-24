#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {size_t dname_len; int /*<<< orphan*/ * dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct module_env {int /*<<< orphan*/ * scratch_buffer; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ub_packed_rrset_key*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ub_packed_rrset_key*,size_t,int /*<<< orphan*/ **,size_t*) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,unsigned char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int
FUNC9(struct module_env* env, 
	struct ub_packed_rrset_key* dnskey_rrset, size_t dnskey_idx,
	struct ub_packed_rrset_key* ds_rrset, size_t ds_idx,
	uint8_t* digest)
{
	sldns_buffer* b = env->scratch_buffer;
	uint8_t* dnskey_rdata;
	size_t dnskey_len;
	FUNC2(dnskey_rrset, dnskey_idx, &dnskey_rdata, &dnskey_len);

	/* create digest source material in buffer 
	 * digest = digest_algorithm( DNSKEY owner name | DNSKEY RDATA);
	 *	DNSKEY RDATA = Flags | Protocol | Algorithm | Public Key. */
	FUNC5(b);
	FUNC8(b, dnskey_rrset->rk.dname, 
		dnskey_rrset->rk.dname_len);
	FUNC1(FUNC4(b));
	FUNC8(b, dnskey_rdata+2, dnskey_len-2); /* skip rdatalen*/
	FUNC6(b);
	
	return FUNC3(FUNC0(ds_rrset, ds_idx),
		(unsigned char*)FUNC4(b), FUNC7(b),
		(unsigned char*)digest);
}