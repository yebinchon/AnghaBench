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
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  heim_oid ;
struct TYPE_4__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ heim_octet_string ;
typedef  int /*<<< orphan*/  contentType ;
typedef  int /*<<< orphan*/  PKCS12_Attributes ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hx509_collector*) ; 
 int /*<<< orphan*/  asn1_oid_id_pkcs7_data ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,size_t,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct hx509_collector*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(hx509_context context,
		     struct hx509_collector *c,
		     const void *data, size_t length,
		     const PKCS12_Attributes *attrs)
{
    heim_octet_string content;
    heim_oid contentType;
    int ret;

    FUNC5(&contentType, 0, sizeof(contentType));

    ret = FUNC4(context,
				      FUNC0(c),
				      data, length,
				      &contentType,
				      &content);
    if (ret)
	return ret;

    if (FUNC3(&contentType, &asn1_oid_id_pkcs7_data) == 0)
	ret = FUNC6(context, c, content.data, content.length);

    FUNC1(&content);
    FUNC2(&contentType);
    return ret;
}