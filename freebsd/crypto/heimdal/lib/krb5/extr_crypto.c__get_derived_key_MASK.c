#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct _krb5_key_data {int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  TYPE_3__* krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  constant ;
struct TYPE_7__ {int /*<<< orphan*/  key; } ;
struct TYPE_8__ {int num_key_usage; int /*<<< orphan*/  et; TYPE_2__ key; TYPE_1__* key_usage; } ;
struct TYPE_6__ {unsigned int usage; struct _krb5_key_data key; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct _krb5_key_data*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned int,int) ; 
 struct _krb5_key_data* FUNC3 (TYPE_3__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static krb5_error_code
FUNC6(krb5_context context,
		 krb5_crypto crypto,
		 unsigned usage,
		 struct _krb5_key_data **key)
{
    int i;
    struct _krb5_key_data *d;
    unsigned char constant[5];

    for(i = 0; i < crypto->num_key_usage; i++)
	if(crypto->key_usage[i].usage == usage) {
	    *key = &crypto->key_usage[i].key;
	    return 0;
	}
    d = FUNC3(crypto, usage);
    if(d == NULL) {
	FUNC5(context, ENOMEM, FUNC0("malloc: out of memory", ""));
	return ENOMEM;
    }
    FUNC4(context, crypto->key.key, &d->key);
    FUNC2(constant, usage, 5);
    FUNC1(context, crypto->et, d, constant, sizeof(constant));
    *key = d;
    return 0;
}