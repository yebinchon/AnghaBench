#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
typedef  int u_char ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_14__ {int len; TYPE_4__* val; } ;
struct TYPE_16__ {int kvno; TYPE_1__ keys; } ;
typedef  TYPE_3__ hdb_entry ;
struct TYPE_18__ {scalar_t__ data; } ;
struct TYPE_15__ {int keytype; TYPE_9__ keyvalue; } ;
struct TYPE_17__ {int* mkvno; TYPE_12__* salt; TYPE_2__ key; } ;
struct TYPE_13__ {unsigned int type; TYPE_9__ salt; } ;
typedef  TYPE_4__ Key ;

/* Variables and functions */
 TYPE_12__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  context ; 
 scalar_t__ FUNC1 (TYPE_9__*,size_t) ; 
 scalar_t__ FUNC2 (TYPE_9__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*) ; 
 int* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC8 (TYPE_4__*,int) ; 
 int FUNC9 (char*,char*,...) ; 
 char* FUNC10 (char*,char) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 size_t FUNC12 (char*) ; 
 char* FUNC13 (char**,char*) ; 

__attribute__((used)) static int
FUNC14(hdb_entry *ent, char *str)
{
    krb5_error_code ret;
    int tmp;
    char *p;
    size_t i;

    p = FUNC13(&str, ":");
    if (FUNC9(p, "%d", &tmp) != 1)
	return 1;
    ent->kvno = tmp;
    p = FUNC13(&str, ":");
    while(p){
	Key *key;
	key = FUNC8(ent->keys.val,
		      (ent->keys.len + 1) * sizeof(*ent->keys.val));
	if(key == NULL)
	    FUNC5 (context, 1, "realloc: out of memory");
	ent->keys.val = key;
	key = ent->keys.val + ent->keys.len;
	ent->keys.len++;
	FUNC7(key, 0, sizeof(*key));
	if(FUNC9(p, "%d", &tmp) == 1) {
	    key->mkvno = FUNC6(sizeof(*key->mkvno));
	    *key->mkvno = tmp;
	} else
	    key->mkvno = NULL;
	p = FUNC13(&str, ":");
	if (FUNC9(p, "%d", &tmp) != 1)
	    return 1;
	key->key.keytype = tmp;
	p = FUNC13(&str, ":");
	ret = FUNC1(&key->key.keyvalue, (FUNC12(p) - 1) / 2 + 1);
	if (ret)
	    FUNC4 (context, 1, ret, "krb5_data_alloc");
	for(i = 0; i < FUNC12(p); i += 2) {
	    if(FUNC9(p + i, "%02x", &tmp) != 1)
		return 1;
	    ((u_char*)key->key.keyvalue.data)[i / 2] = tmp;
	}
	p = FUNC13(&str, ":");
	if(FUNC11(p, "-") != 0){
	    unsigned type;
	    size_t p_len;

	    if(FUNC9(p, "%u/", &type) != 1)
		return 1;
	    p = FUNC10(p, '/');
	    if(p == NULL)
		return 1;
	    p++;
	    p_len = FUNC12(p);

	    key->salt = FUNC0(1, sizeof(*key->salt));
	    if (key->salt == NULL)
		FUNC5 (context, 1, "malloc: out of memory");
	    key->salt->type = type;

	    if (p_len) {
		if(*p == '\"') {
		    ret = FUNC2(&key->salt->salt, p + 1, p_len - 2);
		    if (ret)
			FUNC4 (context, 1, ret, "krb5_data_copy");
		} else {
		    ret = FUNC1(&key->salt->salt,
					  (p_len - 1) / 2 + 1);
		    if (ret)
			FUNC4 (context, 1, ret, "krb5_data_alloc");
		    for(i = 0; i < p_len; i += 2){
			if (FUNC9(p + i, "%02x", &tmp) != 1)
			    return 1;
			((u_char*)key->salt->salt.data)[i / 2] = tmp;
		    }
		}
	    } else
		FUNC3 (&key->salt->salt);
	}
	p = FUNC13(&str, ":");
    }
    return 0;
}