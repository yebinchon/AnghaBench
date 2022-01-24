#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct hx509_collector {int dummy; } ;
typedef  int /*<<< orphan*/  pk ;
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_8__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ heim_octet_string ;
struct TYPE_9__ {int /*<<< orphan*/  encryptedData; int /*<<< orphan*/  encryptionAlgorithm; } ;
typedef  TYPE_2__ PKCS8EncryptedPrivateKeyInfo ;
typedef  int /*<<< orphan*/  PKCS12_Attributes ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hx509_collector*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC2 (void const*,size_t,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct hx509_collector*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(hx509_context context,
		      struct hx509_collector *c,
		      const void *data, size_t length,
		      const PKCS12_Attributes *attrs)
{
    PKCS8EncryptedPrivateKeyInfo pk;
    heim_octet_string content;
    int ret;

    FUNC6(&pk, 0, sizeof(pk));

    ret = FUNC2(data, length, &pk, NULL);
    if (ret)
	return ret;

    ret = FUNC1(context,
			     FUNC0(c),
			     &pk.encryptionAlgorithm,
			     &pk.encryptedData,
			     &content);
    FUNC4(&pk);
    if (ret)
	return ret;

    ret = FUNC5(context, c, content.data, content.length, attrs);
    FUNC3(&content);
    return ret;
}