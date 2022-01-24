#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_22__ {size_t len; TYPE_7__* val; } ;
struct TYPE_23__ {TYPE_8__ rdnSequence; } ;
struct TYPE_21__ {size_t len; TYPE_1__* val; } ;
struct TYPE_19__ {size_t length; int /*<<< orphan*/ * data; } ;
struct TYPE_18__ {size_t length; int /*<<< orphan*/ * data; } ;
struct TYPE_17__ {char* data; size_t length; } ;
struct TYPE_16__ {char* data; size_t length; } ;
struct TYPE_20__ {char* utf8String; char* teletexString; TYPE_5__ universalString; TYPE_4__ bmpString; TYPE_3__ printableString; TYPE_2__ ia5String; } ;
struct TYPE_14__ {int element; TYPE_6__ u; } ;
struct TYPE_15__ {int /*<<< orphan*/  type; TYPE_11__ value; } ;
struct TYPE_13__ {TYPE_9__ u; } ;
typedef  TYPE_10__ Name ;
typedef  TYPE_11__ DirectoryString ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char**,size_t*,char*,int,int) ; 
#define  choice_DirectoryString_bmpString 133 
#define  choice_DirectoryString_ia5String 132 
#define  choice_DirectoryString_printableString 131 
#define  choice_DirectoryString_teletexString 130 
#define  choice_DirectoryString_universalString 129 
#define  choice_DirectoryString_utf8String 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (size_t) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (char*) ; 
 int FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/  const*,size_t,char*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/  const*,size_t,size_t*) ; 
 int FUNC10 (int /*<<< orphan*/  const*,size_t,char*,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/  const*,size_t,size_t*) ; 

int
FUNC12(const Name *n, char **str)
{
    size_t total_len = 0;
    size_t i, j, m;
    int ret;

    *str = FUNC6("");
    if (*str == NULL)
	return ENOMEM;

    for (m = n->u.rdnSequence.len; m > 0; m--) {
	size_t len;
	i = m - 1;

	for (j = 0; j < n->u.rdnSequence.val[i].len; j++) {
	    DirectoryString *ds = &n->u.rdnSequence.val[i].val[j].value;
	    char *oidname;
	    char *ss;

	    oidname = FUNC5(&n->u.rdnSequence.val[i].val[j].type);

	    switch(ds->element) {
	    case choice_DirectoryString_ia5String:
		ss = ds->u.ia5String.data;
		len = ds->u.ia5String.length;
		break;
	    case choice_DirectoryString_printableString:
		ss = ds->u.printableString.data;
		len = ds->u.printableString.length;
		break;
	    case choice_DirectoryString_utf8String:
		ss = ds->u.utf8String;
		len = FUNC7(ss);
		break;
	    case choice_DirectoryString_bmpString: {
	        const uint16_t *bmp = ds->u.bmpString.data;
		size_t bmplen = ds->u.bmpString.length;
		size_t k;

		ret = FUNC9(bmp, bmplen, &k);
		if (ret)
		    return ret;

		ss = FUNC4(k + 1);
		if (ss == NULL)
		    FUNC0("allocation failure"); /* XXX */
		ret = FUNC8(bmp, bmplen, ss, NULL);
		if (ret) {
		    FUNC3(ss);
		    return ret;
		}
		ss[k] = '\0';
		len = k;
		break;
	    }
	    case choice_DirectoryString_teletexString:
		ss = ds->u.teletexString;
		len = FUNC7(ss);
		break;
	    case choice_DirectoryString_universalString: {
	        const uint32_t *uni = ds->u.universalString.data;
		size_t unilen = ds->u.universalString.length;
		size_t k;

		ret = FUNC11(uni, unilen, &k);
		if (ret)
		    return ret;

		ss = FUNC4(k + 1);
		if (ss == NULL)
		    FUNC0("allocation failure"); /* XXX */
		ret = FUNC10(uni, unilen, ss, NULL);
		if (ret) {
		    FUNC3(ss);
		    return ret;
		}
		ss[k] = '\0';
		len = k;
		break;
	    }
	    default:
		FUNC0("unknown directory type: %d", ds->element);
		FUNC2(1);
	    }
	    FUNC1(str, &total_len, oidname, FUNC7(oidname), 0);
	    FUNC3(oidname);
	    FUNC1(str, &total_len, "=", 1, 0);
	    FUNC1(str, &total_len, ss, len, 1);
	    if (ds->element == choice_DirectoryString_bmpString ||
		ds->element == choice_DirectoryString_universalString)
	    {
		FUNC3(ss);
	    }
	    if (j + 1 < n->u.rdnSequence.val[i].len)
		FUNC1(str, &total_len, "+", 1, 0);
	}

	if (i > 0)
	    FUNC1(str, &total_len, ",", 1, 0);
    }
    return 0;
}