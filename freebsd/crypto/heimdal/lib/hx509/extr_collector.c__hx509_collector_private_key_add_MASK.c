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
struct private_key {int /*<<< orphan*/  localKeyId; scalar_t__ private_key; int /*<<< orphan*/  alg; } ;
struct TYPE_6__ {int len; struct private_key** data; } ;
struct hx509_collector {TYPE_1__ val; } ;
typedef  scalar_t__ hx509_private_key ;
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_7__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ heim_octet_string ;
typedef  int /*<<< orphan*/  AlgorithmIdentifier ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  HX509_KEY_FORMAT_DER ; 
 struct private_key* FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct private_key*) ; 
 int /*<<< orphan*/  FUNC4 (struct private_key*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC8 (struct private_key**,int) ; 

int
FUNC9(hx509_context context,
				 struct hx509_collector *c,
				 const AlgorithmIdentifier *alg,
				 hx509_private_key private_key,
				 const heim_octet_string *key_data,
				 const heim_octet_string *localKeyId)
{
    struct private_key *key;
    void *d;
    int ret;

    key = FUNC0(1, sizeof(*key));
    if (key == NULL)
	return ENOMEM;

    d = FUNC8(c->val.data, (c->val.len + 1) * sizeof(c->val.data[0]));
    if (d == NULL) {
	FUNC3(key);
	FUNC6(context, 0, ENOMEM, "Out of memory");
	return ENOMEM;
    }
    c->val.data = d;

    ret = FUNC1(alg, &key->alg);
    if (ret) {
	FUNC6(context, 0, ret, "Failed to copy "
			       "AlgorithmIdentifier");
	goto out;
    }
    if (private_key) {
	key->private_key = private_key;
    } else {
	ret = FUNC5(context, alg,
				       key_data->data, key_data->length,
				       HX509_KEY_FORMAT_DER,
				       &key->private_key);
	if (ret)
	    goto out;
    }
    if (localKeyId) {
	ret = FUNC2(localKeyId, &key->localKeyId);
	if (ret) {
	    FUNC6(context, 0, ret,
				   "Failed to copy localKeyId");
	    goto out;
	}
    } else
	FUNC7(&key->localKeyId, 0, sizeof(key->localKeyId));

    c->val.data[c->val.len] = key;
    c->val.len++;

out:
    if (ret)
	FUNC4(key);

    return ret;
}