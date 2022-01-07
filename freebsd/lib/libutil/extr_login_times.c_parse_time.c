
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;


 scalar_t__ isdigit (char) ;

__attribute__((used)) static char *
parse_time(char * ptr, u_short * t)
{
    u_short val;

    for (val = 0; *ptr && isdigit(*ptr); ptr++)
 val = (u_short)(val * 10 + (*ptr - '0'));

    *t = (u_short)((val / 100) * 60 + (val % 100));

    return (ptr);
}
