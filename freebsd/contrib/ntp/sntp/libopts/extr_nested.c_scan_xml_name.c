
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int valType; } ;
typedef TYPE_1__ tOptionValue ;


 int IS_END_XML_TOKEN_CHAR (char const) ;
 scalar_t__ IS_WHITESPACE_CHAR (char const) ;
 int OPARG_TYPE_NONE ;
 int OPARG_TYPE_STRING ;
 char* SPN_VALUE_NAME_CHARS (char const*) ;
 char* SPN_WHITESPACE_CHARS (char const*) ;
 int option_load_mode ;
 char* parse_attrs (int *,char const*,int *,TYPE_1__*) ;

__attribute__((used)) static char const *
scan_xml_name(char const * name, size_t * nm_len, tOptionValue * val)
{
    char const * scan = SPN_VALUE_NAME_CHARS(name + 1);
    *nm_len = (size_t)(scan - name);
    if (*nm_len > 64)
        return ((void*)0);
    val->valType = OPARG_TYPE_STRING;

    if (IS_WHITESPACE_CHAR(*scan)) {



        scan = SPN_WHITESPACE_CHARS(scan);
        scan = parse_attrs(((void*)0), scan, &option_load_mode, val);
        if (scan == ((void*)0))
            return ((void*)0);
    }

    if (! IS_END_XML_TOKEN_CHAR(*scan))
        return ((void*)0);

    if (*scan == '/') {



        if (*++scan != '>')
            return ((void*)0);
        val->valType = OPARG_TYPE_NONE;
    }
    return scan+1;
}
