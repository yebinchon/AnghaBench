
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Char ;


 int TRIM ;

int
prefix(const Char *sub, const Char *str)
{

    for (;;) {
 if (*sub == 0)
     return (1);
 if (*str == 0)
     return (0);
 if ((*sub++ & TRIM) != (*str++ & TRIM))
     return (0);
    }
}
