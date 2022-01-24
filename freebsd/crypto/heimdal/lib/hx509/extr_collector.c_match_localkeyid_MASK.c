#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ length; } ;
struct private_key {int /*<<< orphan*/  private_key; TYPE_1__ localKeyId; } ;
struct TYPE_6__ {TYPE_1__* local_key_id; int /*<<< orphan*/  match; } ;
typedef  TYPE_2__ hx509_query ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_certs ;
typedef  int /*<<< orphan*/  hx509_cert ;

/* Variables and functions */
 int HX509_LOCAL_ATTRIBUTE_MISSING ; 
 int /*<<< orphan*/  HX509_QUERY_MATCH_LOCAL_KEY_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int
FUNC5(hx509_context context,
		 struct private_key *value,
		 hx509_certs certs)
{
    hx509_cert cert;
    hx509_query q;
    int ret;

    if (value->localKeyId.length == 0) {
	FUNC4(context, 0, HX509_LOCAL_ATTRIBUTE_MISSING,
			       "No local key attribute on private key");
	return HX509_LOCAL_ATTRIBUTE_MISSING;
    }

    FUNC1(&q);
    q.match |= HX509_QUERY_MATCH_LOCAL_KEY_ID;

    q.local_key_id = &value->localKeyId;

    ret = FUNC3(context, certs, &q, &cert);
    if (ret == 0) {

	if (value->private_key)
	    FUNC0(cert, value->private_key);
	FUNC2(cert);
    }
    return ret;
}