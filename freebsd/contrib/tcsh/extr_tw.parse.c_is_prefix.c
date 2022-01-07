
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int FALSE ;
 int TRIM ;
 int TRUE ;

__attribute__((used)) static int
is_prefix(Char *check, Char *template)
{
    for (; *check; check++, template++)
 if ((*check & TRIM) != (*template & TRIM))
     return (FALSE);
    return (TRUE);
}
