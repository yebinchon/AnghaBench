#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_14__ {int /*<<< orphan*/  match; int /*<<< orphan*/  timenow; int /*<<< orphan*/ * path; int /*<<< orphan*/ * subject_id; int /*<<< orphan*/  subject; } ;
typedef  TYPE_1__ hx509_query ;
typedef  int /*<<< orphan*/  hx509_path ;
typedef  int /*<<< orphan*/  hx509_name ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  scalar_t__ hx509_certs ;
typedef  TYPE_2__* hx509_cert ;
typedef  int /*<<< orphan*/  ai ;
struct TYPE_16__ {int /*<<< orphan*/ * keyIdentifier; } ;
struct TYPE_15__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ AuthorityKeyIdentifier ;

/* Variables and functions */
 int HX509_CERTIFICATE_MALFORMED ; 
 int HX509_ISSUER_NOT_FOUND ; 
 int /*<<< orphan*/  HX509_QUERY_FIND_ISSUER_CERT ; 
 int /*<<< orphan*/  HX509_QUERY_MATCH_SUBJECT_KEY_ID ; 
 int /*<<< orphan*/  HX509_QUERY_MATCH_TIME ; 
 int /*<<< orphan*/  HX509_QUERY_NO_MATCH_PATH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(hx509_context context,
	    time_t time_now,
	    hx509_certs trust_anchors,
	    hx509_path *path,
	    hx509_certs pool,
	    hx509_cert current,
	    hx509_cert *parent)
{
    AuthorityKeyIdentifier ai;
    hx509_query q;
    int ret;

    *parent = NULL;
    FUNC11(&ai, 0, sizeof(ai));

    FUNC1(&q);

    if (!FUNC12(current->data)) {
	q.match |= HX509_QUERY_FIND_ISSUER_CERT;
	q.subject = FUNC0(current);
    } else {
	ret = FUNC2(current->data, &ai);
	if (ret) {
	    FUNC10(context, 0, HX509_CERTIFICATE_MALFORMED,
				   "Subjectless certificate missing AuthKeyID");
	    return HX509_CERTIFICATE_MALFORMED;
	}

	if (ai.keyIdentifier == NULL) {
	    FUNC4(&ai);
	    FUNC10(context, 0, HX509_CERTIFICATE_MALFORMED,
				   "Subjectless certificate missing keyIdentifier "
				   "inside AuthKeyID");
	    return HX509_CERTIFICATE_MALFORMED;
	}

	q.subject_id = ai.keyIdentifier;
	q.match = HX509_QUERY_MATCH_SUBJECT_KEY_ID;
    }

    q.path = path;
    q.match |= HX509_QUERY_NO_MATCH_PATH;

    if (pool) {
	q.timenow = time_now;
	q.match |= HX509_QUERY_MATCH_TIME;

	ret = FUNC6(context, pool, &q, parent);
	if (ret == 0) {
	    FUNC4(&ai);
	    return 0;
	}
	q.match &= ~HX509_QUERY_MATCH_TIME;
    }

    if (trust_anchors) {
	ret = FUNC6(context, trust_anchors, &q, parent);
	if (ret == 0) {
	    FUNC4(&ai);
	    return ret;
	}
    }
    FUNC4(&ai);

    {
	hx509_name name;
	char *str;

	ret = FUNC5(current, &name);
	if (ret) {
	    FUNC7(context);
	    return HX509_ISSUER_NOT_FOUND;
	}
	ret = FUNC9(name, &str);
	FUNC8(&name);
	if (ret) {
	    FUNC7(context);
	    return HX509_ISSUER_NOT_FOUND;
	}

	FUNC10(context, 0, HX509_ISSUER_NOT_FOUND,
			       "Failed to find issuer for "
			       "certificate with subject: '%s'", str);
	FUNC3(str);
    }
    return HX509_ISSUER_NOT_FOUND;
}