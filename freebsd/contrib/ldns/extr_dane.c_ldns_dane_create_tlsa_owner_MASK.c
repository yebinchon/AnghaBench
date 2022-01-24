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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int ldns_dane_transport ;

/* Variables and functions */
#define  LDNS_DANE_TRANSPORT_SCTP 130 
#define  LDNS_DANE_TRANSPORT_TCP 129 
#define  LDNS_DANE_TRANSPORT_UDP 128 
 int LDNS_MAX_DOMAINLEN ; 
 scalar_t__ LDNS_RDF_TYPE_DNAME ; 
 int /*<<< orphan*/  LDNS_STATUS_DANE_UNKNOWN_TRANSPORT ; 
 int /*<<< orphan*/  LDNS_STATUS_DOMAINNAME_OVERFLOW ; 
 int /*<<< orphan*/  LDNS_STATUS_MEM_ERR ; 
 int /*<<< orphan*/  LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__,int,char*) ; 
 int FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (char*,int,char*,...) ; 

ldns_status
FUNC7(ldns_rdf** tlsa_owner, const ldns_rdf* name,
		uint16_t port, ldns_dane_transport transport)
{
	char buf[LDNS_MAX_DOMAINLEN];
	size_t s;

	FUNC0(tlsa_owner != NULL);
	FUNC0(name != NULL);
	FUNC0(FUNC2(name) == LDNS_RDF_TYPE_DNAME);

	s = (size_t)FUNC6(buf, LDNS_MAX_DOMAINLEN, "X_%d", (int)port);
	buf[0] = (char)(s - 1);

	switch(transport) {
	case LDNS_DANE_TRANSPORT_TCP:
		s += FUNC6(buf + s, LDNS_MAX_DOMAINLEN - s, "\004_tcp");
		break;
	
	case LDNS_DANE_TRANSPORT_UDP:
		s += FUNC6(buf + s, LDNS_MAX_DOMAINLEN - s, "\004_udp");
		break;

	case LDNS_DANE_TRANSPORT_SCTP:
		s += FUNC6(buf + s, LDNS_MAX_DOMAINLEN - s, "\005_sctp");
		break;
	
	default:
		return LDNS_STATUS_DANE_UNKNOWN_TRANSPORT;
	}
	if (s + FUNC4(name) > LDNS_MAX_DOMAINLEN) {
		return LDNS_STATUS_DOMAINNAME_OVERFLOW;
	}
	FUNC5(buf + s, FUNC1(name), FUNC4(name));
	*tlsa_owner = FUNC3(LDNS_RDF_TYPE_DNAME,
			s + FUNC4(name), buf);
	if (*tlsa_owner == NULL) {
		return LDNS_STATUS_MEM_ERR;
	}
	return LDNS_STATUS_OK;
}