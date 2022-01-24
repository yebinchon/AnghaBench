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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct timeval {int tv_sec; int tv_usec; } ;
typedef  scalar_t__ ldns_status ;
struct TYPE_4__ {scalar_t__ _socket; } ;
typedef  TYPE_1__ ldns_resolver ;
typedef  int /*<<< orphan*/  ldns_pkt ;

/* Variables and functions */
 scalar_t__ LDNS_STATUS_ERR ; 
 scalar_t__ LDNS_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct timeval) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,size_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static ldns_status
FUNC8(ldns_pkt **answer, ldns_resolver *res) {
    ldns_status status;
    struct timeval t1, t2;
    uint8_t *data;
    size_t size;

    if (res->_socket <= 0)
        return LDNS_STATUS_ERR;

    FUNC2(&t1, NULL);
    data = FUNC6(
            res->_socket, &size, FUNC5(res));
    if (data == NULL)
        goto error;

    status = FUNC7(answer, data, size);
    FUNC1(data);
    if (status != LDNS_STATUS_OK)
        goto error;

    FUNC2(&t2, NULL);
    FUNC3(*answer,
            (uint32_t)((t2.tv_sec - t1.tv_sec)*1000) +
                (t2.tv_usec - t1.tv_usec)/1000);
    FUNC4(*answer, t2);
    return status;

error:
    FUNC0(res->_socket);
    res->_socket = 0;
    return LDNS_STATUS_ERR;
}