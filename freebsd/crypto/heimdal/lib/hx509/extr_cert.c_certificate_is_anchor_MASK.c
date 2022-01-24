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
struct TYPE_4__ {int /*<<< orphan*/  certificate; int /*<<< orphan*/  match; } ;
typedef  TYPE_1__ hx509_query ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/ * hx509_certs ;
typedef  int /*<<< orphan*/  hx509_cert ;

/* Variables and functions */
 int /*<<< orphan*/  HX509_QUERY_MATCH_CERTIFICATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(hx509_context context,
		      hx509_certs trust_anchors,
		      const hx509_cert cert)
{
    hx509_query q;
    hx509_cert c;
    int ret;

    if (trust_anchors == NULL)
	return 0;

    FUNC1(&q);

    q.match = HX509_QUERY_MATCH_CERTIFICATE;
    q.certificate = FUNC0(cert);

    ret = FUNC3(context, trust_anchors, &q, &c);
    if (ret == 0)
	FUNC2(c);
    return ret == 0;
}