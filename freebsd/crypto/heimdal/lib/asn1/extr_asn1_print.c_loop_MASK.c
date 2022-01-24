#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  str ;
struct TYPE_7__ {unsigned char* data; size_t length; } ;
typedef  TYPE_1__ heim_printable_string ;
typedef  int /*<<< orphan*/  heim_oid ;
struct TYPE_8__ {unsigned char* data; size_t length; } ;
typedef  TYPE_2__ heim_octet_string ;
typedef  int /*<<< orphan*/  heim_integer ;
typedef  char* heim_general_string ;
typedef  scalar_t__ Der_type ;
typedef  scalar_t__ Der_class ;

/* Variables and functions */
 scalar_t__ ASN1_C_APPL ; 
 scalar_t__ ASN1_C_CONTEXT ; 
 scalar_t__ ASN1_C_UNIV ; 
 size_t ASN1_INDEFINITE ; 
 scalar_t__ CONS ; 
 scalar_t__ PRIM ; 
#define  UT_EndOfContent 140 
#define  UT_Enumerated 139 
#define  UT_GeneralString 138 
#define  UT_GeneralizedTime 137 
#define  UT_IA5String 136 
#define  UT_Integer 135 
#define  UT_OID 134 
#define  UT_OctetString 133 
#define  UT_PrintableString 132 
#define  UT_Sequence 131 
#define  UT_Set 130 
#define  UT_UTF8String 129 
#define  UT_VisibleString 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 char* FUNC2 (scalar_t__) ; 
 int FUNC3 (unsigned char*,size_t,char**,int /*<<< orphan*/ *) ; 
 int FUNC4 (unsigned char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (unsigned char*,size_t,int*,int /*<<< orphan*/ *) ; 
 int FUNC6 (unsigned char*,size_t,size_t*,size_t*) ; 
 int FUNC7 (unsigned char*,size_t,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (unsigned char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (unsigned char*,size_t,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (unsigned char*,size_t,scalar_t__*,scalar_t__*,unsigned int*,size_t*) ; 
 char* FUNC11 (unsigned int) ; 
 char* FUNC12 (scalar_t__) ; 
 int FUNC13 (int /*<<< orphan*/ *,char,char**) ; 
 int FUNC14 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 scalar_t__ indefinite_form_loop ; 
 scalar_t__ indefinite_form_loop_max ; 
 scalar_t__ indent_flag ; 
 int /*<<< orphan*/  inner_flag ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC21 (int,size_t) ; 
 int /*<<< orphan*/  FUNC22 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static size_t
FUNC23 (unsigned char *buf, size_t len, int indent)
{
    unsigned char *start_buf = buf;

    while (len > 0) {
	int ret;
	Der_class class;
	Der_type type;
	unsigned int tag;
	size_t sz;
	size_t length;
	size_t loop_length = 0;
	int end_tag = 0;
	const char *tagname;

	ret = FUNC10 (buf, len, &class, &type, &tag, &sz);
	if (ret)
	    FUNC16 (1, "der_get_tag: %s", FUNC15 (ret));
	if (sz > len)
	    FUNC16 (1, "unreasonable length (%u) > %u",
		  (unsigned)sz, (unsigned)len);
	buf += sz;
	len -= sz;
	if (indent_flag) {
	    int i;
	    for (i = 0; i < indent; ++i)
		FUNC22 (" ");
	}
	FUNC22 ("%s %s ", FUNC2(class), FUNC12(type));
	tagname = FUNC11(tag);
	if (class == ASN1_C_UNIV && tagname != NULL)
	    FUNC22 ("%s = ", tagname);
	else
	    FUNC22 ("tag %d = ", tag);
	ret = FUNC6 (buf, len, &length, &sz);
	if (ret)
	    FUNC16 (1, "der_get_tag: %s", FUNC15 (ret));
	if (sz > len)
	    FUNC16 (1, "unreasonable tag length (%u) > %u",
		  (unsigned)sz, (unsigned)len);
	buf += sz;
	len -= sz;
	if (length == ASN1_INDEFINITE) {
	    if ((class == ASN1_C_UNIV && type == PRIM && tag == UT_OctetString) ||
		(class == ASN1_C_CONTEXT && type == CONS) ||
		(class == ASN1_C_UNIV && type == CONS && tag == UT_Sequence) ||
		(class == ASN1_C_UNIV && type == CONS && tag == UT_Set)) {
		FUNC22("*INDEFINITE FORM*");
	    } else {
		FUNC17(stdout);
		FUNC16(1, "indef form used on unsupported object");
	    }
	    end_tag = 1;
	    if (indefinite_form_loop > indefinite_form_loop_max)
		FUNC16(1, "indefinite form used recursively more then %lu "
		     "times, aborting", indefinite_form_loop_max);
	    indefinite_form_loop++;
	    length = len;
	} else if (length > len) {
	    FUNC22("\n");
	    FUNC17(stdout);
	    FUNC16 (1, "unreasonable inner length (%u) > %u",
		  (unsigned)length, (unsigned)len);
	}
	if (class == ASN1_C_CONTEXT || class == ASN1_C_APPL) {
	    FUNC22 ("%lu bytes [%u]", (unsigned long)length, tag);
	    if (type == CONS) {
		FUNC22("\n");
		loop_length = FUNC23 (buf, length, indent + 2);
	    } else {
		FUNC22(" IMPLICIT content\n");
	    }
	} else if (class == ASN1_C_UNIV) {
	    switch (tag) {
	    case UT_EndOfContent:
		FUNC22 (" INDEFINITE length was %lu\n",
			(unsigned long)(buf - start_buf));
		break;
	    case UT_Set :
	    case UT_Sequence :
		FUNC22 ("%lu bytes {\n", (unsigned long)length);
		loop_length = FUNC23 (buf, length, indent + 2);
		if (indent_flag) {
		    int i;
		    for (i = 0; i < indent; ++i)
			FUNC22 (" ");
		    FUNC22 ("}\n");
		} else
		    FUNC22 ("} indent = %d\n", indent / 2);
		break;
	    case UT_Integer : {
		int val;

		if (length <= sizeof(val)) {
		    ret = FUNC5 (buf, length, &val, NULL);
		    if (ret)
			FUNC16 (1, "der_get_integer: %s", FUNC15 (ret));
		    FUNC22 ("integer %d\n", val);
		} else {
		    heim_integer vali;
		    char *p;

		    ret = FUNC4(buf, length, &vali, NULL);
		    if (ret)
			FUNC16 (1, "der_get_heim_integer: %s",
			      FUNC15 (ret));
		    ret = FUNC14(&vali, &p);
		    if (ret)
			FUNC16 (1, "der_print_hex_heim_integer: %s",
			      FUNC15 (ret));
		    FUNC22 ("BIG NUM integer: length %lu %s\n",
			    (unsigned long)length, p);
		    FUNC18(p);
		}
		break;
	    }
	    case UT_OctetString : {
		heim_octet_string str;
		size_t i;

		ret = FUNC7 (buf, length, &str, NULL);
		if (ret)
		    FUNC16 (1, "der_get_octet_string: %s", FUNC15 (ret));
		FUNC22 ("(length %lu), ", (unsigned long)length);

		if (inner_flag) {
		    Der_class class;
		    Der_type type;
		    unsigned int tag;

		    ret = FUNC10(str.data, str.length,
				      &class, &type, &tag, &sz);
		    if (ret || sz > str.length ||
			type != CONS || tag != UT_Sequence)
			goto just_an_octet_string;

		    FUNC22("{\n");
		    FUNC23 (str.data, str.length, indent + 2);
		    for (i = 0; i < indent; ++i)
			FUNC22 (" ");
		    FUNC22 ("}\n");

		} else {
		    unsigned char *uc;

		just_an_octet_string:
		    uc = (unsigned char *)str.data;
		    for (i = 0; i < FUNC21(16,length); ++i)
			FUNC22 ("%02x", uc[i]);
		    FUNC22 ("\n");
		}
		FUNC18 (str.data);
		break;
	    }
	    case UT_IA5String :
	    case UT_PrintableString : {
		heim_printable_string str;
		unsigned char *s;
		size_t n;

		FUNC20(&str, 0, sizeof(str));

		ret = FUNC9 (buf, length, &str, NULL);
		if (ret)
		    FUNC16 (1, "der_get_general_string: %s",
			  FUNC15 (ret));
		s = str.data;
		FUNC22("\"");
		for (n = 0; n < str.length; n++) {
		    if (FUNC19((int)s[n]))
			FUNC22 ("%c", s[n]);
		    else
			FUNC22 ("#%02x", s[n]);
		}
		FUNC22("\"\n");
		FUNC1(&str);
		break;
	    }
	    case UT_GeneralizedTime :
	    case UT_GeneralString :
	    case UT_VisibleString :
	    case UT_UTF8String : {
		heim_general_string str;

		ret = FUNC3 (buf, length, &str, NULL);
		if (ret)
		    FUNC16 (1, "der_get_general_string: %s",
			  FUNC15 (ret));
		FUNC22 ("\"%s\"\n", str);
		FUNC18 (str);
		break;
	    }
	    case UT_OID: {
		heim_oid o;
		char *p;

		ret = FUNC8(buf, length, &o, NULL);
		if (ret)
		    FUNC16 (1, "der_get_oid: %s", FUNC15 (ret));
		ret = FUNC13(&o, '.', &p);
		FUNC0(&o);
		if (ret)
		    FUNC16 (1, "der_print_heim_oid: %s", FUNC15 (ret));
		FUNC22("%s\n", p);
		FUNC18(p);

		break;
	    }
	    case UT_Enumerated: {
		int num;

		ret = FUNC5 (buf, length, &num, NULL);
		if (ret)
		    FUNC16 (1, "der_get_enum: %s", FUNC15 (ret));

		FUNC22("%u\n", num);
		break;
	    }
	    default :
		FUNC22 ("%lu bytes\n", (unsigned long)length);
		break;
	    }
	}
	if (end_tag) {
	    if (loop_length == 0)
		FUNC16(1, "zero length INDEFINITE data ? indent = %d\n",
		     indent / 2);
	    if (loop_length < length)
		length = loop_length;
	    if (indefinite_form_loop == 0)
		FUNC16(1, "internal error in indefinite form loop detection");
	    indefinite_form_loop--;
	} else if (loop_length)
	    FUNC16(1, "internal error for INDEFINITE form");
	buf += length;
	len -= length;
    }
    return 0;
}