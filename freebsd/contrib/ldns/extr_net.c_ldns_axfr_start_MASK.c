#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_storage {scalar_t__ ss_family; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  scalar_t__ ldns_status ;
typedef  int /*<<< orphan*/  ldns_rr_class ;
struct TYPE_11__ {scalar_t__ _axfr_soa_count; int /*<<< orphan*/  _socket; int /*<<< orphan*/ * _nameservers; } ;
typedef  TYPE_1__ ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_pkt ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_storage*) ; 
 int /*<<< orphan*/  LDNS_MAX_PACKETLEN ; 
 scalar_t__ LDNS_RESOLV_INET ; 
 scalar_t__ LDNS_RESOLV_INET6 ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_AXFR ; 
 scalar_t__ LDNS_STATUS_ADDRESS_ERR ; 
 scalar_t__ LDNS_STATUS_CRYPTO_TSIG_ERR ; 
 scalar_t__ LDNS_STATUS_ERR ; 
 scalar_t__ LDNS_STATUS_MEM_ERR ; 
 scalar_t__ LDNS_STATUS_NETWORK_ERR ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  SOCK_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sockaddr_storage* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 struct sockaddr_storage* FUNC9 (scalar_t__,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 size_t FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 scalar_t__ FUNC17 (TYPE_1__*) ; 
 scalar_t__ FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (struct sockaddr_storage*,int /*<<< orphan*/ ,struct sockaddr_storage*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sockaddr_storage*,int /*<<< orphan*/ ) ; 

ldns_status
FUNC21(ldns_resolver *resolver, const ldns_rdf *domain, ldns_rr_class class) 
{
        ldns_pkt *query;
        ldns_buffer *query_wire;

        struct sockaddr_storage *src = NULL;
        size_t src_len = 0;
        struct sockaddr_storage *ns = NULL;
        size_t ns_len = 0;
        size_t ns_i;
        ldns_status status;

        if (!resolver || FUNC12(resolver) < 1) {
                return LDNS_STATUS_ERR;
        }

        query = FUNC6(FUNC10(domain), LDNS_RR_TYPE_AXFR, class, 0);

        if (!query) {
                return LDNS_STATUS_ADDRESS_ERR;
        }
	if(FUNC14(resolver)) {
		src = FUNC9(
				FUNC14(resolver), 0, &src_len);
	}
        /* For AXFR, we have to make the connection ourselves */
        /* try all nameservers (which usually would mean v4 fallback if
         * @hostname is used */
        for (ns_i = 0;
             ns_i < FUNC12(resolver) &&
             resolver->_socket == SOCK_INVALID;
             ns_i++) {
		if (ns != NULL) {
			FUNC0(ns);
		}
	        ns = FUNC8(
	        	resolver->_nameservers[ns_i],
			FUNC13(resolver), &ns_len);
#ifndef S_SPLINT_S
		if ((ns->ss_family == AF_INET) &&
			(FUNC11(resolver) == LDNS_RESOLV_INET6)) {
			/* not reachable */
			FUNC0(ns);
			ns = NULL;
			continue;
		}

		if ((ns->ss_family == AF_INET6) &&
			 (FUNC11(resolver) == LDNS_RESOLV_INET)) {
			/* not reachable */
			FUNC0(ns);
			ns = NULL;
			continue;
		}
#endif

		resolver->_socket = FUNC19(
				ns, (socklen_t)ns_len,
				src, (socklen_t)src_len,
				FUNC15(resolver));
	}

	if (resolver->_socket == SOCK_INVALID) {
		FUNC5(query);
		FUNC0(ns);
		return LDNS_STATUS_NETWORK_ERR;
	}

#ifdef HAVE_SSL
	if (ldns_resolver_tsig_keyname(resolver) && ldns_resolver_tsig_keydata(resolver)) {
		status = ldns_pkt_tsig_sign(query,
		                            ldns_resolver_tsig_keyname(resolver),
		                            ldns_resolver_tsig_keydata(resolver),
		                            300, ldns_resolver_tsig_algorithm(resolver), NULL);
		if (status != LDNS_STATUS_OK) {
			/* to prevent problems on subsequent calls to 
			 * ldns_axfr_start we have to close the socket here! */
			close_socket(resolver->_socket);
			resolver->_socket = 0;

			ldns_pkt_free(query);
			LDNS_FREE(ns);

			return LDNS_STATUS_CRYPTO_TSIG_ERR;
		}
	}
#endif /* HAVE_SSL */

        /* Convert the query to a buffer
         * Is this necessary?
         */
        query_wire = FUNC3(LDNS_MAX_PACKETLEN);
        if(!query_wire) {
                FUNC5(query);
                FUNC0(ns);

		FUNC1(resolver->_socket);

                return LDNS_STATUS_MEM_ERR;
        }
        status = FUNC4(query_wire, query);
        if (status != LDNS_STATUS_OK) {
                FUNC5(query);
		FUNC2(query_wire);
                FUNC0(ns);

		/* to prevent problems on subsequent calls to ldns_axfr_start
		 * we have to close the socket here! */
		FUNC1(resolver->_socket);
		resolver->_socket = 0;

                return status;
        }
        /* Send the query */
        if (FUNC20(query_wire, resolver->_socket, ns,
				(socklen_t)ns_len) == 0) {
                FUNC5(query);
                FUNC2(query_wire);
                FUNC0(ns);

		/* to prevent problems on subsequent calls to ldns_axfr_start
		 * we have to close the socket here! */


		FUNC1(resolver->_socket);

                return LDNS_STATUS_NETWORK_ERR;
        }

        FUNC5(query);
        FUNC2(query_wire);
        FUNC0(ns);

        /*
         * The AXFR is done once the second SOA record is sent
         */
        resolver->_axfr_soa_count = 0;
        return LDNS_STATUS_OK;
}