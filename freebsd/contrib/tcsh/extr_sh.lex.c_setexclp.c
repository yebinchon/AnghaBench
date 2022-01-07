
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 char* exclp ;

__attribute__((used)) static void
setexclp(Char *cp)
{
    if (cp && cp[0] == '\n')
 return;
    exclp = cp;
}
