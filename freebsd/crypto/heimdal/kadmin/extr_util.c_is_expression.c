
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strchr (char*,char const) ;

__attribute__((used)) static int
is_expression(const char *string)
{
    const char *p;
    int quote = 0;

    for(p = string; *p; p++) {
 if(quote) {
     quote = 0;
     continue;
 }
 if(*p == '\\')
     quote++;
 else if(strchr("[]*?", *p) != ((void*)0))
     return 1;
    }
    return 0;
}
