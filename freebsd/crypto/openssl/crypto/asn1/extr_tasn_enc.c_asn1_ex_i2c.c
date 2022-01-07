
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ itype; scalar_t__ utype; int size; TYPE_4__* funcs; } ;
struct TYPE_13__ {unsigned char* data; int length; } ;
struct TYPE_12__ {int (* prim_i2c ) (int **,unsigned char*,int*,TYPE_6__ const*) ;} ;
struct TYPE_11__ {int type; int flags; unsigned char* data; int length; } ;
struct TYPE_9__ {int * asn1_value; } ;
struct TYPE_10__ {int type; TYPE_1__ value; } ;
typedef int ASN1_VALUE ;
typedef TYPE_2__ ASN1_TYPE ;
typedef TYPE_3__ ASN1_STRING ;
typedef TYPE_4__ ASN1_PRIMITIVE_FUNCS ;
typedef TYPE_5__ ASN1_OBJECT ;
typedef TYPE_6__ ASN1_ITEM ;
typedef int ASN1_INTEGER ;
typedef int ASN1_BOOLEAN ;
typedef int ASN1_BIT_STRING ;


 scalar_t__ ASN1_ITYPE_MSTRING ;
 scalar_t__ ASN1_ITYPE_PRIMITIVE ;
 int ASN1_STRING_FLAG_NDEF ;
 int ASN1_TFLG_NDEF ;
 scalar_t__ V_ASN1_ANY ;
 int i2c_ASN1_BIT_STRING (int *,unsigned char**) ;
 int i2c_ASN1_INTEGER (int *,unsigned char**) ;
 int memcpy (unsigned char*,unsigned char const*,int) ;
 int stub1 (int **,unsigned char*,int*,TYPE_6__ const*) ;

__attribute__((used)) static int asn1_ex_i2c(ASN1_VALUE **pval, unsigned char *cout, int *putype,
                       const ASN1_ITEM *it)
{
    ASN1_BOOLEAN *tbool = ((void*)0);
    ASN1_STRING *strtmp;
    ASN1_OBJECT *otmp;
    int utype;
    const unsigned char *cont;
    unsigned char c;
    int len;
    const ASN1_PRIMITIVE_FUNCS *pf;
    pf = it->funcs;
    if (pf && pf->prim_i2c)
        return pf->prim_i2c(pval, cout, putype, it);


    if ((it->itype != ASN1_ITYPE_PRIMITIVE)
        || (it->utype != 147)) {
        if (!*pval)
            return -1;
    }

    if (it->itype == ASN1_ITYPE_MSTRING) {

        strtmp = (ASN1_STRING *)*pval;
        utype = strtmp->type;
        *putype = utype;
    } else if (it->utype == V_ASN1_ANY) {

        ASN1_TYPE *typ;
        typ = (ASN1_TYPE *)*pval;
        utype = typ->type;
        *putype = utype;
        pval = &typ->value.asn1_value;
    } else
        utype = *putype;

    switch (utype) {
    case 138:
        otmp = (ASN1_OBJECT *)*pval;
        cont = otmp->data;
        len = otmp->length;
        if (cont == ((void*)0) || len == 0)
            return -1;
        break;

    case 140:
        cont = ((void*)0);
        len = 0;
        break;

    case 147:
        tbool = (ASN1_BOOLEAN *)pval;
        if (*tbool == -1)
            return -1;
        if (it->utype != V_ASN1_ANY) {



            if (*tbool && (it->size > 0))
                return -1;
            if (!*tbool && !it->size)
                return -1;
        }
        c = (unsigned char)*tbool;
        cont = &c;
        len = 1;
        break;

    case 149:
        return i2c_ASN1_BIT_STRING((ASN1_BIT_STRING *)*pval,
                                   cout ? &cout : ((void*)0));

    case 141:
    case 146:



        return i2c_ASN1_INTEGER((ASN1_INTEGER *)*pval, cout ? &cout : ((void*)0));

    case 137:
    case 139:
    case 136:
    case 133:
    case 129:
    case 142:
    case 131:
    case 145:
    case 143:
    case 128:
    case 144:
    case 132:
    case 148:
    case 130:
    case 135:
    case 134:
    default:

        strtmp = (ASN1_STRING *)*pval;

        if ((it->size == ASN1_TFLG_NDEF)
            && (strtmp->flags & ASN1_STRING_FLAG_NDEF)) {
            if (cout) {
                strtmp->data = cout;
                strtmp->length = 0;
            }

            return -2;
        }
        cont = strtmp->data;
        len = strtmp->length;

        break;

    }
    if (cout && len)
        memcpy(cout, cont, len);
    return len;
}
