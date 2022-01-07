
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int pstring ;
typedef int EditLine ;


 scalar_t__ curinum ;
 int snprintf (char*,int,char*,int ) ;

char *
prompt(EditLine *el)
{
    static char pstring[64];
    snprintf(pstring, sizeof(pstring), "fsdb (inum: %ju)> ",
 (uintmax_t)curinum);
    return pstring;
}
