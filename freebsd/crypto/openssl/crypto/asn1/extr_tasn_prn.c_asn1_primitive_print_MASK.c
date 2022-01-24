#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {scalar_t__ itype; long utype; int size; TYPE_4__* funcs; } ;
struct TYPE_21__ {int flags; int /*<<< orphan*/  str_flags; } ;
struct TYPE_20__ {int (* prim_print ) (int /*<<< orphan*/ *,int /*<<< orphan*/ **,TYPE_6__ const*,int,TYPE_5__ const*) ;} ;
struct TYPE_19__ {long type; int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_17__ {int /*<<< orphan*/ * asn1_value; } ;
struct TYPE_18__ {long type; TYPE_1__ value; } ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_VALUE ;
typedef  TYPE_2__ ASN1_TYPE ;
typedef  TYPE_3__ ASN1_STRING ;
typedef  TYPE_4__ ASN1_PRIMITIVE_FUNCS ;
typedef  TYPE_5__ ASN1_PCTX ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;
typedef  TYPE_6__ ASN1_ITEM ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ ASN1_ITYPE_MSTRING ; 
 int ASN1_PCTX_FLAGS_NO_ANY_TYPE ; 
 int ASN1_PCTX_FLAGS_SHOW_TYPE ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 long V_ASN1_ANY ; 
#define  V_ASN1_BIT_STRING 138 
#define  V_ASN1_BOOLEAN 137 
#define  V_ASN1_ENUMERATED 136 
#define  V_ASN1_GENERALIZEDTIME 135 
#define  V_ASN1_INTEGER 134 
 long V_ASN1_NEG ; 
 long V_ASN1_NULL ; 
#define  V_ASN1_OBJECT 133 
#define  V_ASN1_OCTET_STRING 132 
#define  V_ASN1_OTHER 131 
#define  V_ASN1_SEQUENCE 130 
#define  V_ASN1_SET 129 
#define  V_ASN1_UTCTIME 128 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char const*,char const*,TYPE_5__ const*) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,TYPE_6__ const*,int,TYPE_5__ const*) ; 

__attribute__((used)) static int FUNC12(BIO *out, ASN1_VALUE **fld,
                                const ASN1_ITEM *it, int indent,
                                const char *fname, const char *sname,
                                const ASN1_PCTX *pctx)
{
    long utype;
    ASN1_STRING *str;
    int ret = 1, needlf = 1;
    const char *pname;
    const ASN1_PRIMITIVE_FUNCS *pf;
    pf = it->funcs;
    if (!FUNC7(out, indent, fname, sname, pctx))
        return 0;
    if (pf && pf->prim_print)
        return pf->prim_print(out, fld, it, indent, pctx);
    if (it->itype == ASN1_ITYPE_MSTRING) {
        str = (ASN1_STRING *)*fld;
        utype = str->type & ~V_ASN1_NEG;
    } else {
        utype = it->utype;
        if (utype == V_ASN1_BOOLEAN)
            str = NULL;
        else
            str = (ASN1_STRING *)*fld;
    }
    if (utype == V_ASN1_ANY) {
        ASN1_TYPE *atype = (ASN1_TYPE *)*fld;
        utype = atype->type;
        fld = &atype->value.asn1_value;
        str = (ASN1_STRING *)*fld;
        if (pctx->flags & ASN1_PCTX_FLAGS_NO_ANY_TYPE)
            pname = NULL;
        else
            pname = FUNC4(utype);
    } else {
        if (pctx->flags & ASN1_PCTX_FLAGS_SHOW_TYPE)
            pname = FUNC4(utype);
        else
            pname = NULL;
    }

    if (utype == V_ASN1_NULL) {
        if (FUNC5(out, "NULL\n") <= 0)
            return 0;
        return 1;
    }

    if (pname) {
        if (FUNC5(out, pname) <= 0)
            return 0;
        if (FUNC5(out, ":") <= 0)
            return 0;
    }

    switch (utype) {
    case V_ASN1_BOOLEAN:
        {
            int boolval = *(int *)fld;
            if (boolval == -1)
                boolval = it->size;
            ret = FUNC6(out, boolval);
        }
        break;

    case V_ASN1_INTEGER:
    case V_ASN1_ENUMERATED:
        ret = FUNC8(out, str);
        break;

    case V_ASN1_UTCTIME:
        ret = FUNC2(out, str);
        break;

    case V_ASN1_GENERALIZEDTIME:
        ret = FUNC0(out, str);
        break;

    case V_ASN1_OBJECT:
        ret = FUNC10(out, (const ASN1_OBJECT *)*fld);
        break;

    case V_ASN1_OCTET_STRING:
    case V_ASN1_BIT_STRING:
        ret = FUNC9(out, str, indent);
        needlf = 0;
        break;

    case V_ASN1_SEQUENCE:
    case V_ASN1_SET:
    case V_ASN1_OTHER:
        if (FUNC5(out, "\n") <= 0)
            return 0;
        if (FUNC3(out, str->data, str->length, indent, 0) <= 0)
            ret = 0;
        needlf = 0;
        break;

    default:
        ret = FUNC1(out, str, pctx->str_flags);

    }
    if (!ret)
        return 0;
    if (needlf && FUNC5(out, "\n") <= 0)
        return 0;
    return 1;
}