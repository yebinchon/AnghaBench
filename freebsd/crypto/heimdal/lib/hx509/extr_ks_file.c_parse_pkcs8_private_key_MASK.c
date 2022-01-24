#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct hx509_collector {int dummy; } ;
typedef  int /*<<< orphan*/  hx509_pem_header ;
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_6__ {size_t length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ heim_octet_string ;
struct TYPE_7__ {int /*<<< orphan*/  privateKey; int /*<<< orphan*/  privateKeyAlgorithm; } ;
typedef  TYPE_2__ PKCS8PrivateKeyInfo ;
typedef  int /*<<< orphan*/  AlgorithmIdentifier ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct hx509_collector*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC1 (void const*,size_t,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (void const*) ; 

__attribute__((used)) static int
FUNC4(hx509_context context, const char *fn,
			struct hx509_collector *c,
			const hx509_pem_header *headers,
			const void *data, size_t length,
			const AlgorithmIdentifier *ai)
{
    PKCS8PrivateKeyInfo ki;
    heim_octet_string keydata;

    int ret;

    ret = FUNC1(data, length, &ki, NULL);
    if (ret)
	return ret;

    keydata.data = FUNC3(data);
    keydata.length = length;

    ret = FUNC0(context,
					   c,
					   &ki.privateKeyAlgorithm,
					   NULL,
					   &ki.privateKey,
					   &keydata);
    FUNC2(&ki);
    return ret;
}