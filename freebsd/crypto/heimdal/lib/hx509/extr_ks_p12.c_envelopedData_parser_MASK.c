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
struct hx509_collector {int dummy; } ;
typedef  int /*<<< orphan*/  hx509_lock ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  heim_oid ;
struct TYPE_4__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ heim_octet_string ;
typedef  int /*<<< orphan*/  contentType ;
typedef  int /*<<< orphan*/  PKCS12_Attributes ;

/* Variables and functions */
 int /*<<< orphan*/  HX509_ERROR_APPEND ; 
 int /*<<< orphan*/  FUNC0 (struct hx509_collector*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  asn1_oid_id_pkcs7_data ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct hx509_collector*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(hx509_context context,
		     struct hx509_collector *c,
		     const void *data, size_t length,
		     const PKCS12_Attributes *attrs)
{
    heim_octet_string content;
    heim_oid contentType;
    hx509_lock lock;
    int ret;

    FUNC7(&contentType, 0, sizeof(contentType));

    lock = FUNC0(c);

    ret = FUNC5(context,
			       FUNC1(lock),
			       0,
			       data, length,
			       NULL,
			       0,
			       &contentType,
			       &content);
    if (ret) {
	FUNC6(context, HX509_ERROR_APPEND, ret,
			       "PKCS12 failed to unenvelope");
	return ret;
    }

    if (FUNC4(&contentType, &asn1_oid_id_pkcs7_data) == 0)
	ret = FUNC8(context, c, content.data, content.length);

    FUNC2(&content);
    FUNC3(&contentType);

    return ret;
}