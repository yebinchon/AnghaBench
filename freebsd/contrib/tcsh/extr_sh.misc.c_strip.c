
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 char INVALID_BYTE ;
 char TRIM ;

Char *
strip(Char *cp)
{
    Char *dp = cp;

    if (!cp)
 return (cp);
    while (*dp != '\0') {



  *dp &= TRIM;
 dp++;
    }
    return (cp);
}
