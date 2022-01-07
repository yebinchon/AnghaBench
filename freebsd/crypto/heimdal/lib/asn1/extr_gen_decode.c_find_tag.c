
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned int tagvalue; int tagclass; } ;
struct TYPE_9__ {int type; TYPE_3__* symbol; TYPE_2__ tag; TYPE_1__* subtype; } ;
typedef TYPE_4__ Type ;
struct TYPE_8__ {TYPE_4__* type; int name; int stype; } ;
struct TYPE_6__ {int type; } ;
typedef int Der_type ;
typedef int Der_class ;


 int ASN1_C_UNIV ;
 int CONS ;
 int PRIM ;
 int SUndefined ;
 int Stype ;
 unsigned int UT_BMPString ;
 unsigned int UT_BitString ;
 unsigned int UT_Boolean ;
 unsigned int UT_Enumerated ;
 unsigned int UT_GeneralString ;
 unsigned int UT_GeneralizedTime ;
 unsigned int UT_IA5String ;
 unsigned int UT_Integer ;
 unsigned int UT_Null ;
 unsigned int UT_OID ;
 unsigned int UT_OctetString ;
 unsigned int UT_PrintableString ;
 unsigned int UT_Sequence ;
 unsigned int UT_Set ;
 unsigned int UT_TeletexString ;
 unsigned int UT_UTCTime ;
 unsigned int UT_UTF8String ;
 unsigned int UT_UniversalString ;
 unsigned int UT_VisibleString ;
 int abort () ;
 int errx (int,char*) ;
 int exit (int) ;
 int is_primitive_type (int ) ;
 int lex_error_message (char*,int ) ;

__attribute__((used)) static void
find_tag (const Type *t,
   Der_class *cl, Der_type *ty, unsigned *tag)
{
    switch (t->type) {
    case 150:
 *cl = ASN1_C_UNIV;
 *ty = PRIM;
 *tag = UT_BitString;
 break;
    case 149:
 *cl = ASN1_C_UNIV;
 *ty = PRIM;
 *tag = UT_Boolean;
 break;
    case 148:
 errx(1, "Cannot have recursive CHOICE");
    case 147:
 *cl = ASN1_C_UNIV;
 *ty = PRIM;
 *tag = UT_Enumerated;
 break;
    case 146:
 *cl = ASN1_C_UNIV;
 *ty = PRIM;
 *tag = UT_GeneralString;
 break;
    case 133:
 *cl = ASN1_C_UNIV;
 *ty = PRIM;
 *tag = UT_TeletexString;
 break;
    case 145:
 *cl = ASN1_C_UNIV;
 *ty = PRIM;
 *tag = UT_GeneralizedTime;
 break;
    case 144:
 *cl = ASN1_C_UNIV;
 *ty = PRIM;
 *tag = UT_IA5String;
 break;
    case 143:
 *cl = ASN1_C_UNIV;
 *ty = PRIM;
 *tag = UT_Integer;
 break;
    case 142:
 *cl = ASN1_C_UNIV;
 *ty = PRIM;
 *tag = UT_Null;
 break;
    case 141:
 *cl = ASN1_C_UNIV;
 *ty = PRIM;
 *tag = UT_OID;
 break;
    case 140:
 *cl = ASN1_C_UNIV;
 *ty = PRIM;
 *tag = UT_OctetString;
 break;
    case 139:
 *cl = ASN1_C_UNIV;
 *ty = PRIM;
 *tag = UT_PrintableString;
 break;
    case 138:
    case 137:
 *cl = ASN1_C_UNIV;
 *ty = CONS;
 *tag = UT_Sequence;
 break;
    case 136:
    case 135:
 *cl = ASN1_C_UNIV;
 *ty = CONS;
 *tag = UT_Set;
 break;
    case 134:
 *cl = t->tag.tagclass;
 *ty = is_primitive_type(t->subtype->type) ? PRIM : CONS;
 *tag = t->tag.tagvalue;
 break;
    case 132:
 if ((t->symbol->stype == Stype && t->symbol->type == ((void*)0))
     || t->symbol->stype == SUndefined) {
     lex_error_message("%s is imported or still undefined, "
         " can't generate tag checking data in CHOICE "
         "without this information",
         t->symbol->name);
     exit(1);
 }
 find_tag(t->symbol->type, cl, ty, tag);
 return;
    case 131:
 *cl = ASN1_C_UNIV;
 *ty = PRIM;
 *tag = UT_UTCTime;
 break;
    case 130:
 *cl = ASN1_C_UNIV;
 *ty = PRIM;
 *tag = UT_UTF8String;
 break;
    case 151:
 *cl = ASN1_C_UNIV;
 *ty = PRIM;
 *tag = UT_BMPString;
 break;
    case 129:
 *cl = ASN1_C_UNIV;
 *ty = PRIM;
 *tag = UT_UniversalString;
 break;
    case 128:
 *cl = ASN1_C_UNIV;
 *ty = PRIM;
 *tag = UT_VisibleString;
 break;
    default:
 abort();
    }
}
