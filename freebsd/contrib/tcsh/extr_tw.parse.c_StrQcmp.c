
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 char const TRIM ;
 scalar_t__ samecase (char const) ;

int
StrQcmp(const Char *str1, const Char *str2)
{
    for (; *str1 && samecase(*str1 & TRIM) == samecase(*str2 & TRIM);
  str1++, str2++)
 continue;





    if (*str1 == '\0' && *str2 == '\0')
 return (0);
    else if (*str1 == '\0')
 return (-1);
    else if (*str2 == '\0')
 return (1);
    else
 return ((*str1 & TRIM) - (*str2 & TRIM));
}
