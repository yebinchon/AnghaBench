
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char*,char*) ;

__attribute__((used)) static int
cmp_general_string (void *a, void *b)
{
    char **sa = (char **)a;
    char **sb = (char **)b;

    return strcmp (*sa, *sb);
}
