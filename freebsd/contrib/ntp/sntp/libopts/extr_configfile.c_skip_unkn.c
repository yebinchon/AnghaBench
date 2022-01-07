
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* BRK_END_XML_TOKEN_CHARS (char const*) ;
 char const NUL ;

__attribute__((used)) inline static char const *
skip_unkn(char const * txt)
{
    txt = BRK_END_XML_TOKEN_CHARS(txt);
    return (*txt == NUL) ? ((void*)0) : txt;
}
