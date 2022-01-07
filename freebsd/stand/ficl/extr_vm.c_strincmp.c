
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ FICL_UNS ;


 int tolower (char) ;

int strincmp(char *cp1, char *cp2, FICL_UNS count)
{
    int i = 0;

    for (; 0 < count; ++cp1, ++cp2, --count)
    {
        i = tolower(*cp1) - tolower(*cp2);
        if (i != 0)
            return i;
        else if (*cp1 == '\0')
            return 0;
    }
    return 0;
}
