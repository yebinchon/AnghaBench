
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
output_name(char *s)
{
    char *p;

    for (p = s; *p; ++p)
 if (*p == '-' || *p == '.')
     *p = '_';
}
