
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tOptionLoadMode ;


 int ARG_BREAK_STR ;
 int IS_WHITESPACE_CHAR (char) ;
 void* NUL ;
 scalar_t__ OPTION_LOAD_KEEP ;
 char* SPN_WHITESPACE_CHARS (char*) ;
 int strlen (char*) ;
 char* strpbrk (char*,int ) ;

__attribute__((used)) static char *
assemble_arg_val(char * txt, tOptionLoadMode mode)
{
    char * end = strpbrk(txt, ARG_BREAK_STR);
    int space_break;




    if (end == ((void*)0))
        return txt + strlen(txt);






    if (mode == OPTION_LOAD_KEEP) {
        *(end++) = NUL;
        return end;
    }






    space_break = IS_WHITESPACE_CHAR(*end);
    *(end++) = NUL;

    end = SPN_WHITESPACE_CHARS(end);
    if (space_break && ((*end == ':') || (*end == '=')))
        end = SPN_WHITESPACE_CHARS(end+1);

    return end;
}
