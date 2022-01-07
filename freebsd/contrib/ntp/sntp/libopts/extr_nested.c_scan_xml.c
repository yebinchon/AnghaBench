
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nestVal; int strVal; } ;
struct TYPE_7__ {int valType; TYPE_1__ v; } ;
typedef TYPE_2__ tOptionValue ;
typedef scalar_t__ tOptionLoadMode ;


 char* AGALOC (size_t,char*) ;
 int AGFREE (char*) ;
 int IS_VAR_FIRST_CHAR (char const) ;
 char NUL ;







 scalar_t__ OPTION_LOAD_KEEP ;
 char* SPN_WHITESPACE_CHARS (char const*) ;
 int add_bool (int *,char const*,size_t,char const*,size_t) ;
 int add_nested (int *,char const*,size_t,char*,size_t) ;
 int add_number (int *,char const*,size_t,char const*,size_t) ;
 TYPE_2__* add_string (int *,char const*,size_t,char const*,size_t) ;
 char* find_end_xml (char const*,size_t,char const*,size_t*) ;
 int memcpy (char*,char const*,size_t) ;
 int munge_str (int ,scalar_t__) ;
 scalar_t__ option_load_mode ;
 char* scan_xml_name (char const*,size_t*,TYPE_2__*) ;
 char const* unnamed_xml (char const*) ;

__attribute__((used)) static char const *
scan_xml(char const * xml_name, tOptionValue * res_val)
{
    size_t nm_len, v_len;
    char const * scan;
    char const * val_str;
    tOptionValue valu;
    tOptionLoadMode save_mode = option_load_mode;

    if (! IS_VAR_FIRST_CHAR(*++xml_name))
        return unnamed_xml(xml_name);




    val_str = scan_xml_name(xml_name, &nm_len, &valu);
    if (val_str == ((void*)0))
        goto bail_scan_xml;

    if (valu.valType == 130)
        scan = val_str;
    else {
        if (option_load_mode != OPTION_LOAD_KEEP)
            val_str = SPN_WHITESPACE_CHARS(val_str);
        scan = find_end_xml(xml_name, nm_len, val_str, &v_len);
        if (scan == ((void*)0))
            goto bail_scan_xml;
    }







    switch (valu.valType) {
    case 130:
        add_string(&(res_val->v.nestVal), xml_name, nm_len, ((void*)0), 0);
        break;

    case 128:
    {
        tOptionValue * new_val = add_string(
            &(res_val->v.nestVal), xml_name, nm_len, val_str, v_len);

        if (option_load_mode != OPTION_LOAD_KEEP)
            munge_str(new_val->v.strVal, option_load_mode);

        break;
    }

    case 134:
        add_bool(&(res_val->v.nestVal), xml_name, nm_len, val_str, v_len);
        break;

    case 129:
        add_number(&(res_val->v.nestVal), xml_name, nm_len, val_str, v_len);
        break;

    case 132:
    {
        char * pz = AGALOC(v_len+1, "h scan");
        memcpy(pz, val_str, v_len);
        pz[v_len] = NUL;
        add_nested(&(res_val->v.nestVal), xml_name, nm_len, pz, v_len);
        AGFREE(pz);
        break;
    }

    case 133:
    case 131:
    default:
        break;
    }

    option_load_mode = save_mode;
    return scan;

bail_scan_xml:
    option_load_mode = save_mode;
    return ((void*)0);
}
