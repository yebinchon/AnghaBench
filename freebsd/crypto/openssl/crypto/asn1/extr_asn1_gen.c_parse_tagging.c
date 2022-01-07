
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASN1_F_PARSE_TAGGING ;
 int ASN1_R_INVALID_MODIFIER ;
 int ASN1_R_INVALID_NUMBER ;
 int ASN1err (int ,int ) ;
 int ERR_add_error_data (int,char*,char*) ;
 int V_ASN1_APPLICATION ;
 int V_ASN1_CONTEXT_SPECIFIC ;
 int V_ASN1_PRIVATE ;
 int V_ASN1_UNIVERSAL ;
 long strtoul (char const*,char**,int) ;

__attribute__((used)) static int parse_tagging(const char *vstart, int vlen, int *ptag, int *pclass)
{
    char erch[2];
    long tag_num;
    char *eptr;
    if (!vstart)
        return 0;
    tag_num = strtoul(vstart, &eptr, 10);

    if (eptr && *eptr && (eptr > vstart + vlen))
        return 0;
    if (tag_num < 0) {
        ASN1err(ASN1_F_PARSE_TAGGING, ASN1_R_INVALID_NUMBER);
        return 0;
    }
    *ptag = tag_num;

    if (eptr)
        vlen -= eptr - vstart;
    else
        vlen = 0;
    if (vlen) {
        switch (*eptr) {

        case 'U':
            *pclass = V_ASN1_UNIVERSAL;
            break;

        case 'A':
            *pclass = V_ASN1_APPLICATION;
            break;

        case 'P':
            *pclass = V_ASN1_PRIVATE;
            break;

        case 'C':
            *pclass = V_ASN1_CONTEXT_SPECIFIC;
            break;

        default:
            erch[0] = *eptr;
            erch[1] = 0;
            ASN1err(ASN1_F_PARSE_TAGGING, ASN1_R_INVALID_MODIFIER);
            ERR_add_error_data(2, "Char=", erch);
            return 0;

        }
    } else
        *pclass = V_ASN1_CONTEXT_SPECIFIC;

    return 1;

}
