
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tOptions ;
struct TYPE_3__ {scalar_t__ valType; } ;
typedef TYPE_1__ tOptionValue ;
typedef scalar_t__ tOptionLoadMode ;
typedef int tOptState ;


 char NUL ;
 scalar_t__ OPARG_TYPE_STRING ;
 scalar_t__ OPTION_LOAD_COOKED ;
 char* SPN_VALUE_NAME_CHARS (char*) ;
 int SPN_WHITESPACE_CHARS (char*) ;
 char* VOIDP (int ) ;
 int cook_xml_text (char*) ;
 int load_opt_line (int *,int *,char*,int,scalar_t__) ;
 int memset (char*,char,size_t) ;
 scalar_t__ option_load_mode ;
 int parse_attrs (int *,int ,scalar_t__*,TYPE_1__*) ;
 char* strchr (char*,char) ;
 char* trim_xml_text (char*,char*,scalar_t__) ;

__attribute__((used)) static char *
handle_struct(tOptions * opts, tOptState * ost, char * txt, int dir)
{
    tOptionLoadMode mode = option_load_mode;
    tOptionValue valu;

    char * pzName = ++txt;
    char * pzData;
    char * pcNulPoint;

    txt = SPN_VALUE_NAME_CHARS(txt);
    pcNulPoint = txt;
    valu.valType = OPARG_TYPE_STRING;

    switch (*txt) {
    case ' ':
    case '\t':
        txt = VOIDP(parse_attrs(
            opts, SPN_WHITESPACE_CHARS(txt), &mode, &valu));
        if (txt == ((void*)0))
            return txt;
        if (*txt == '>')
            break;
        if (*txt != '/')
            return ((void*)0);


    case '/':
        if (txt[1] != '>')
            return ((void*)0);
        *txt = NUL;
        txt += 2;
        load_opt_line(opts, ost, pzName, dir, mode);
        return txt;

    case '>':
        break;

    default:
        txt = strchr(txt, '>');
        if (txt != ((void*)0))
            txt++;
        return txt;
    }





    *pcNulPoint = NUL;
    pzData = ++txt;
    txt = trim_xml_text(txt, pzName, mode);
    if (txt == ((void*)0))
        return txt;





    memset(pcNulPoint, ' ', (size_t)(pzData - pcNulPoint));





    if ( (valu.valType == OPARG_TYPE_STRING)
       && (mode == OPTION_LOAD_COOKED))
        cook_xml_text(pzData);





    load_opt_line(opts, ost, pzName, dir, mode);

    return txt;
}
