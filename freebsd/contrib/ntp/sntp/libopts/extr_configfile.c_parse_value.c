
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int valType; } ;
typedef TYPE_1__ tOptionValue ;


 int IS_END_XML_TOKEN_CHAR (char const) ;
 int OPARG_TYPE_BOOLEAN ;
 int OPARG_TYPE_ENUMERATION ;
 int OPARG_TYPE_HIERARCHY ;
 int OPARG_TYPE_MEMBERSHIP ;
 int OPARG_TYPE_NONE ;
 int OPARG_TYPE_NUMERIC ;
 int OPARG_TYPE_STRING ;
 char const* SPN_OPTION_NAME_CHARS (char const*) ;
 int find_option_value_type_cmd (char const*,size_t) ;
 char const* skip_unkn (char const*) ;

__attribute__((used)) static char const *
parse_value(char const * txt, tOptionValue * typ)
{
    size_t len = 0;

    if (*(txt++) != '=')
        goto woops;

    len = (size_t)(SPN_OPTION_NAME_CHARS(txt) - txt);

    if ((len == 0) || (! IS_END_XML_TOKEN_CHAR(txt[len]))) {
    woops:
        typ->valType = OPARG_TYPE_NONE;
        return skip_unkn(txt + len);
    }







    switch (find_option_value_type_cmd(txt, len)) {
    default:
    case 128: goto woops;

    case 129:
        typ->valType = OPARG_TYPE_STRING;
        break;

    case 134:
        typ->valType = OPARG_TYPE_NUMERIC;
        break;

    case 137:
    case 136:
        typ->valType = OPARG_TYPE_BOOLEAN;
        break;

    case 133:
        typ->valType = OPARG_TYPE_ENUMERATION;
        break;

    case 131:
    case 130:
        typ->valType = OPARG_TYPE_MEMBERSHIP;
        break;

    case 132:
    case 135:
        typ->valType = OPARG_TYPE_HIERARCHY;
    }

    return txt + len;
}
