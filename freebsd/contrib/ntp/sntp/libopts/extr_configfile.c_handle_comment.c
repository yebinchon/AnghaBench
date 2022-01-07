
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strstr (char*,char*) ;

__attribute__((used)) static char *
handle_comment(char * txt)
{
    char * pz = strstr(txt, "-->");
    if (pz != ((void*)0))
        pz += 3;
    return pz;
}
