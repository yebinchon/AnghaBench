#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int type; } ;
struct TYPE_4__ {char* gen_name; TYPE_3__* type; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ Symbol ;

/* Variables and functions */
 int FALSE ; 
#define  TBMPString 151 
#define  TBitString 150 
#define  TBoolean 149 
#define  TChoice 148 
#define  TEnumerated 147 
#define  TGeneralString 146 
#define  TGeneralizedTime 145 
#define  TIA5String 144 
#define  TInteger 143 
#define  TNull 142 
#define  TOID 141 
#define  TOctetString 140 
#define  TPrintableString 139 
 int TRUE ; 
#define  TSequence 138 
#define  TSequenceOf 137 
#define  TSet 136 
#define  TSetOf 135 
#define  TTag 134 
#define  TTeletexString 133 
#define  TType 132 
#define  TUTCTime 131 
#define  TUTF8String 130 
#define  TUniversalString 129 
#define  TVisibleString 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  codefile ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_3__*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

void
FUNC4 (const Symbol *s)
{
    int preserve = FUNC3(s->name) ? TRUE : FALSE;

    FUNC2 (codefile, "int ASN1CALL\n"
	     "decode_%s(const unsigned char *p HEIMDAL_UNUSED_ATTRIBUTE,"
	     " size_t len HEIMDAL_UNUSED_ATTRIBUTE, %s *data, size_t *size)\n"
	     "{\n",
	     s->gen_name, s->gen_name);

    switch (s->type->type) {
    case TInteger:
    case TBoolean:
    case TOctetString:
    case TOID:
    case TGeneralizedTime:
    case TGeneralString:
    case TTeletexString:
    case TUTF8String:
    case TPrintableString:
    case TIA5String:
    case TBMPString:
    case TUniversalString:
    case TVisibleString:
    case TUTCTime:
    case TNull:
    case TEnumerated:
    case TBitString:
    case TSequence:
    case TSequenceOf:
    case TSet:
    case TSetOf:
    case TTag:
    case TType:
    case TChoice:
	FUNC2 (codefile,
		 "size_t ret = 0;\n"
		 "size_t l HEIMDAL_UNUSED_ATTRIBUTE;\n"
		 "int e HEIMDAL_UNUSED_ATTRIBUTE;\n");
	if (preserve)
	    FUNC2 (codefile, "const unsigned char *begin = p;\n");

	FUNC2 (codefile, "\n");
	FUNC2 (codefile, "memset(data, 0, sizeof(*data));\n"); /* hack to avoid `unused variable' */

	FUNC1 ("data", s->type, 0, "goto fail", "Top", NULL, 1);
	if (preserve)
	    FUNC2 (codefile,
		     "data->_save.data = calloc(1, ret);\n"
		     "if (data->_save.data == NULL) { \n"
		     "e = ENOMEM; goto fail; \n"
		     "}\n"
		     "data->_save.length = ret;\n"
		     "memcpy(data->_save.data, begin, ret);\n");
	FUNC2 (codefile,
		 "if(size) *size = ret;\n"
		 "return 0;\n");
	FUNC2 (codefile,
		 "fail:\n"
		 "free_%s(data);\n"
		 "return e;\n",
		 s->gen_name);
	break;
    default:
	FUNC0 ();
    }
    FUNC2 (codefile, "}\n\n");
}