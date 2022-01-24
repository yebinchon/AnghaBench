#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_storage {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  scalar_t__ ldns_status ;
struct TYPE_5__ {int /*<<< orphan*/  _socket; int /*<<< orphan*/ * _nameservers; } ;
typedef  TYPE_1__ ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_pkt ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_MAX_PACKETLEN ; 
 scalar_t__ LDNS_STATUS_ADDRESS_ERR ; 
 scalar_t__ LDNS_STATUS_MEM_ERR ; 
 scalar_t__ LDNS_STATUS_NETWORK_ERR ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_storage*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct sockaddr_storage* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct sockaddr_storage*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sockaddr_storage*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ldns_status
FUNC10(ldns_resolver *res, ldns_pkt *qpkt, int nameserver) {
    /* This routine is based on ldns_axfr_start, with the major
     * difference in that it takes a query packet explicitly.
     */
    struct sockaddr_storage *ns = NULL;
    size_t ns_len = 0;
    ldns_buffer *qbuf = NULL;
    ldns_status status;

    ns = FUNC5(
            res->_nameservers[nameserver], FUNC6(res), &ns_len);
    if (ns == NULL) {
        status = LDNS_STATUS_MEM_ERR;
        goto error;
    }

    res->_socket = FUNC8(
            ns, (socklen_t)ns_len, FUNC7(res));
    if (res->_socket <= 0) {
        status = LDNS_STATUS_ADDRESS_ERR;
        goto error;
    }

    qbuf = FUNC3(LDNS_MAX_PACKETLEN);
    if (qbuf == NULL) {
        status = LDNS_STATUS_MEM_ERR;
        goto error;
    }

    status = FUNC4(qbuf, qpkt);
    if (status != LDNS_STATUS_OK)
        goto error;

    if (FUNC9(qbuf, res->_socket, ns, (socklen_t)ns_len) == 0) {
        status = LDNS_STATUS_NETWORK_ERR;
        goto error;
    }

    FUNC2(qbuf);
    FUNC1(ns);
    return LDNS_STATUS_OK;
 
error:
    FUNC2(qbuf);
    FUNC1(ns);
    if (res->_socket > 0) {
        FUNC0(res->_socket);
        res->_socket = 0;
    }
    return status;
}