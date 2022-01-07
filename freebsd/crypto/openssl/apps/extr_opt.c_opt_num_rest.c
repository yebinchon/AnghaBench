
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** opt_rest () ;

int opt_num_rest(void)
{
    int i = 0;
    char **pp;

    for (pp = opt_rest(); *pp; pp++, i++)
        continue;
    return i;
}
