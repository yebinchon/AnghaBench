#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int responseStatus; TYPE_2__* responseBytes; } ;
struct TYPE_6__ {size_t length; int /*<<< orphan*/  data; } ;
struct TYPE_7__ {TYPE_1__ response; int /*<<< orphan*/  responseType; } ;
typedef  TYPE_3__ OCSPResponse ;
typedef  int /*<<< orphan*/  OCSPBasicOCSPResponse ;

/* Variables and functions */
 int ASN1_EXTRA_DATA ; 
 int EINVAL ; 
 int HX509_REVOKE_WRONG_DATA ; 
 int /*<<< orphan*/  asn1_oid_id_pkix_ocsp_basic ; 
 int FUNC0 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC1 (void const*,size_t,TYPE_3__*,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
#define  successful 128 

__attribute__((used)) static int
FUNC6(const void *data, size_t length, OCSPBasicOCSPResponse *basic)
{
    OCSPResponse resp;
    size_t size;
    int ret;

    FUNC5(basic, 0, sizeof(*basic));

    ret = FUNC1(data, length, &resp, &size);
    if (ret)
	return ret;
    if (length != size) {
	FUNC4(&resp);
	return ASN1_EXTRA_DATA;
    }

    switch (resp.responseStatus) {
    case successful:
	break;
    default:
	FUNC4(&resp);
	return HX509_REVOKE_WRONG_DATA;
    }

    if (resp.responseBytes == NULL) {
	FUNC4(&resp);
	return EINVAL;
    }

    ret = FUNC2(&resp.responseBytes->responseType,
			   &asn1_oid_id_pkix_ocsp_basic);
    if (ret != 0) {
	FUNC4(&resp);
	return HX509_REVOKE_WRONG_DATA;
    }

    ret = FUNC0(resp.responseBytes->response.data,
				       resp.responseBytes->response.length,
				       basic,
				       &size);
    if (ret) {
	FUNC4(&resp);
	return ret;
    }
    if (size != resp.responseBytes->response.length) {
	FUNC4(&resp);
	FUNC3(basic);
	return ASN1_EXTRA_DATA;
    }
    FUNC4(&resp);

    return 0;
}