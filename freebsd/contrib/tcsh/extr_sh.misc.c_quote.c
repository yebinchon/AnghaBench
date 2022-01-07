
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 char QUOTE ;

Char *
quote(Char *cp)
{
    Char *dp = cp;

    if (!cp)
 return (cp);
    while (*dp != '\0') {





 if ((*dp & 0x80) == 0)

     *dp |= QUOTE;
 dp++;
    }
    return (cp);
}
