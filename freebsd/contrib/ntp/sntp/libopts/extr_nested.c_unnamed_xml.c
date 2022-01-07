
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static char const *
unnamed_xml(char const * txt)
{
    switch (*txt) {
    default:
        txt = ((void*)0);
        break;

    case '!':
        txt = strstr(txt, "-->");
        if (txt != ((void*)0))
            txt += 3;
        break;

    case '?':
        txt = strchr(txt, '>');
        if (txt != ((void*)0))
            txt++;
        break;
    }
    return txt;
}
