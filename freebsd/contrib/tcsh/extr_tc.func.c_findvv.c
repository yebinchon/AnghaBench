
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const Char ;



__attribute__((used)) static int
findvv(Char **vv, const char *cp)
{
    for (; vv && *vv; vv++) {
 size_t i;
 for (i = 0; (*vv)[i] && (*vv)[i] == cp[i]; i++)
     continue;
 if ((*vv)[i] == '\0' && cp[i] == '\0')
     return 1;
    }
    return 0;
}
