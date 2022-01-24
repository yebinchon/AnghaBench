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
struct hx509_collector {int dummy; } ;
typedef  int /*<<< orphan*/  hx509_pem_header ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_cert ;
typedef  int /*<<< orphan*/  AlgorithmIdentifier ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct hx509_collector*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,void const*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(hx509_context context, const char *fn,
		  struct hx509_collector *c,
		  const hx509_pem_header *headers,
		  const void *data, size_t len,
		  const AlgorithmIdentifier *ai)
{
    hx509_cert cert;
    int ret;

    ret = FUNC2(context, data, len, &cert);
    if (ret)
	return ret;

    ret = FUNC0(context, c, cert);
    FUNC1(cert);
    return ret;
}