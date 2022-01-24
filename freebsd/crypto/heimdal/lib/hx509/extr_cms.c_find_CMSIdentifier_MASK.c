#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_11__ {int match; scalar_t__ timenow; int /*<<< orphan*/ * subject_id; int /*<<< orphan*/ * issuer_name; int /*<<< orphan*/ * serial; } ;
typedef  TYPE_3__ hx509_query ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_certs ;
typedef  int /*<<< orphan*/ * hx509_cert ;
typedef  int /*<<< orphan*/  c ;
struct TYPE_9__ {int /*<<< orphan*/  issuer; int /*<<< orphan*/  serialNumber; } ;
struct TYPE_10__ {int /*<<< orphan*/  subjectKeyIdentifier; TYPE_1__ issuerAndSerialNumber; } ;
struct TYPE_12__ {int element; TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  Certificate ;
typedef  TYPE_4__ CMSIdentifier ;

/* Variables and functions */
 int HX509_CERT_NOT_FOUND ; 
 int HX509_CMS_NO_RECIPIENT_CERTIFICATE ; 
 int /*<<< orphan*/  HX509_ERROR_APPEND ; 
 int HX509_QUERY_MATCH_ISSUER_NAME ; 
 int HX509_QUERY_MATCH_SERIALNUMBER ; 
 int HX509_QUERY_MATCH_SUBJECT_KEY_ID ; 
 int HX509_QUERY_MATCH_TIME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
#define  choice_CMSIdentifier_issuerAndSerialNumber 129 
#define  choice_CMSIdentifier_subjectKeyIdentifier 128 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_4__*,char**) ; 

__attribute__((used)) static int
FUNC7(hx509_context context,
		   CMSIdentifier *client,
		   hx509_certs certs,
		   time_t time_now,
		   hx509_cert *signer_cert,
		   int match)
{
    hx509_query q;
    hx509_cert cert;
    Certificate c;
    int ret;

    FUNC4(&c, 0, sizeof(c));
    FUNC0(&q);

    *signer_cert = NULL;

    switch (client->element) {
    case choice_CMSIdentifier_issuerAndSerialNumber:
	q.serial = &client->u.issuerAndSerialNumber.serialNumber;
	q.issuer_name = &client->u.issuerAndSerialNumber.issuer;
	q.match = HX509_QUERY_MATCH_SERIALNUMBER|HX509_QUERY_MATCH_ISSUER_NAME;
	break;
    case choice_CMSIdentifier_subjectKeyIdentifier:
	q.subject_id = &client->u.subjectKeyIdentifier;
	q.match = HX509_QUERY_MATCH_SUBJECT_KEY_ID;
	break;
    default:
	FUNC3(context, 0, HX509_CMS_NO_RECIPIENT_CERTIFICATE,
			       "unknown CMS identifier element");
	return HX509_CMS_NO_RECIPIENT_CERTIFICATE;
    }

    q.match |= match;

    q.match |= HX509_QUERY_MATCH_TIME;
    if (time_now)
	q.timenow = time_now;
    else
	q.timenow = FUNC5(NULL);

    ret = FUNC1(context, certs, &q, &cert);
    if (ret == HX509_CERT_NOT_FOUND) {
	char *str;

	ret = FUNC6(context, client, &str);
	if (ret == 0) {
	    FUNC3(context, 0,
				   HX509_CMS_NO_RECIPIENT_CERTIFICATE,
				   "Failed to find %s", str);
	} else
	    FUNC2(context);
	return HX509_CMS_NO_RECIPIENT_CERTIFICATE;
    } else if (ret) {
	FUNC3(context, HX509_ERROR_APPEND,
			       HX509_CMS_NO_RECIPIENT_CERTIFICATE,
			       "Failed to find CMS id in cert store");
	return HX509_CMS_NO_RECIPIENT_CERTIFICATE;
    }

    *signer_cert = cert;

    return 0;
}