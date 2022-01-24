#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hx509_lock ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  heim_oid ;
struct TYPE_12__ {scalar_t__ data; } ;
typedef  TYPE_2__ heim_octet_string ;
typedef  int /*<<< orphan*/  cont ;
struct TYPE_14__ {int /*<<< orphan*/ * parameters; } ;
struct TYPE_11__ {int /*<<< orphan*/ * encryptedContent; TYPE_4__ contentEncryptionAlgorithm; int /*<<< orphan*/  contentType; } ;
struct TYPE_13__ {TYPE_1__ encryptedContentInfo; } ;
typedef  TYPE_3__ CMSEncryptedData ;
typedef  TYPE_4__ AlgorithmIdentifier ;

/* Variables and functions */
 int HX509_ALG_NOT_SUPP ; 
 int HX509_CMS_NO_DATA_AVAILABLE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC1 (void const*,size_t,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

int
FUNC8(hx509_context context,
			    hx509_lock lock,
			    const void *data,
			    size_t length,
			    heim_oid *contentType,
			    heim_octet_string *content)
{
    heim_octet_string cont;
    CMSEncryptedData ed;
    AlgorithmIdentifier *ai;
    int ret;

    FUNC7(content, 0, sizeof(*content));
    FUNC7(&cont, 0, sizeof(cont));

    ret = FUNC1(data, length, &ed, NULL);
    if (ret) {
	FUNC6(context, 0, ret,
			       "Failed to decode CMSEncryptedData");
	return ret;
    }

    if (ed.encryptedContentInfo.encryptedContent == NULL) {
	ret = HX509_CMS_NO_DATA_AVAILABLE;
	FUNC6(context, 0, ret,
			       "No content in EncryptedData");
	goto out;
    }

    ret = FUNC2(&ed.encryptedContentInfo.contentType, contentType);
    if (ret) {
	FUNC5(context);
	goto out;
    }

    ai = &ed.encryptedContentInfo.contentEncryptionAlgorithm;
    if (ai->parameters == NULL) {
	ret = HX509_ALG_NOT_SUPP;
	FUNC5(context);
	goto out;
    }

    ret = FUNC0(context,
			     lock,
			     ai,
			     ed.encryptedContentInfo.encryptedContent,
			     &cont);
    if (ret)
	goto out;

    *content = cont;

out:
    if (ret) {
	if (cont.data)
	    FUNC3(cont.data);
    }
    FUNC4(&ed);
    return ret;
}