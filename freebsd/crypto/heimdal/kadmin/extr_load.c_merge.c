
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int loadit (int,char*,int,char**) ;

int
merge(void *opt, int argc, char **argv)
{
    return loadit(1, "merge", argc, argv);
}
