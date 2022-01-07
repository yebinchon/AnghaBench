
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int set1 (int const*,int **,int *,int) ;
 int shvhed ;
 int ** xmalloc (int) ;

void
setv(const Char *var, Char *val, int flags)
{
    Char **vec = xmalloc(2 * sizeof(Char **));

    vec[0] = val;
    vec[1] = 0;
    set1(var, vec, &shvhed, flags);
}
