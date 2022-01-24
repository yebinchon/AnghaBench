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
typedef  scalar_t__ u_int8_t ;
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct sshkey {int dummy; } ;
struct sockaddr {int dummy; } ;
struct rrsetinfo {int rri_flags; scalar_t__ rri_nrdatas; TYPE_1__* rri_rdatas; } ;
struct TYPE_2__ {int /*<<< orphan*/  rdi_length; int /*<<< orphan*/  rdi_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DNS_RDATACLASS_IN ; 
 int /*<<< orphan*/  DNS_RDATATYPE_SSHFP ; 
 int DNS_VERIFY_FOUND ; 
 int DNS_VERIFY_MATCH ; 
 int DNS_VERIFY_SECURE ; 
 int RRSET_VALIDATED ; 
 scalar_t__ SSHFP_HASH_RESERVED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ **,size_t*,struct sshkey*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct rrsetinfo*) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rrsetinfo**) ; 
 scalar_t__ FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 

int
FUNC13(const char *hostname, struct sockaddr *address,
    struct sshkey *hostkey, int *flags)
{
	u_int counter;
	int result;
	struct rrsetinfo *fingerprints = NULL;

	u_int8_t hostkey_algorithm;
	u_int8_t hostkey_digest_type = SSHFP_HASH_RESERVED;
	u_char *hostkey_digest;
	size_t hostkey_digest_len;

	u_int8_t dnskey_algorithm;
	u_int8_t dnskey_digest_type;
	u_char *dnskey_digest;
	size_t dnskey_digest_len;

	*flags = 0;

	FUNC1("verify_host_key_dns");
	if (hostkey == NULL)
		FUNC6("No key to look up!");

	if (FUNC10(hostname)) {
		FUNC0("skipped DNS lookup for numerical hostname");
		return -1;
	}

	result = FUNC9(hostname, DNS_RDATACLASS_IN,
	    DNS_RDATATYPE_SSHFP, 0, &fingerprints);
	if (result) {
		FUNC12("DNS lookup error: %s", FUNC4(result));
		return -1;
	}

	if (fingerprints->rri_flags & RRSET_VALIDATED) {
		*flags |= DNS_VERIFY_SECURE;
		FUNC0("found %d secure fingerprints in DNS",
		    fingerprints->rri_nrdatas);
	} else {
		FUNC0("found %d insecure fingerprints in DNS",
		    fingerprints->rri_nrdatas);
	}

	/* Initialize default host key parameters */
	if (!FUNC2(&hostkey_algorithm, &hostkey_digest_type,
	    &hostkey_digest, &hostkey_digest_len, hostkey)) {
		FUNC5("Error calculating host key fingerprint.");
		FUNC8(fingerprints);
		return -1;
	}

	if (fingerprints->rri_nrdatas)
		*flags |= DNS_VERIFY_FOUND;

	for (counter = 0; counter < fingerprints->rri_nrdatas; counter++) {
		/*
		 * Extract the key from the answer. Ignore any badly
		 * formatted fingerprints.
		 */
		if (!FUNC3(&dnskey_algorithm, &dnskey_digest_type,
		    &dnskey_digest, &dnskey_digest_len,
		    fingerprints->rri_rdatas[counter].rdi_data,
		    fingerprints->rri_rdatas[counter].rdi_length)) {
			FUNC12("Error parsing fingerprint from DNS.");
			continue;
		}

		if (hostkey_digest_type != dnskey_digest_type) {
			hostkey_digest_type = dnskey_digest_type;
			FUNC7(hostkey_digest);

			/* Initialize host key parameters */
			if (!FUNC2(&hostkey_algorithm,
			    &hostkey_digest_type, &hostkey_digest,
			    &hostkey_digest_len, hostkey)) {
				FUNC5("Error calculating key fingerprint.");
				FUNC8(fingerprints);
				return -1;
			}
		}

		/* Check if the current key is the same as the given key */
		if (hostkey_algorithm == dnskey_algorithm &&
		    hostkey_digest_type == dnskey_digest_type) {
			if (hostkey_digest_len == dnskey_digest_len &&
			    FUNC11(hostkey_digest, dnskey_digest,
			    hostkey_digest_len) == 0)
				*flags |= DNS_VERIFY_MATCH;
		}
		FUNC7(dnskey_digest);
	}

	FUNC7(hostkey_digest); /* from sshkey_fingerprint_raw() */
	FUNC8(fingerprints);

	if (*flags & DNS_VERIFY_FOUND)
		if (*flags & DNS_VERIFY_MATCH)
			FUNC0("matching host key fingerprint found in DNS");
		else
			FUNC0("mismatching host key fingerprint found in DNS");
	else
		FUNC0("no host key fingerprint found in DNS");

	return 0;
}