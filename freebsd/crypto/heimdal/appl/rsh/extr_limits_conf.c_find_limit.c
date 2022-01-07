
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct limit {int * name; } ;


 struct limit* limits ;
 scalar_t__ strcasecmp (char const*,int *) ;

__attribute__((used)) static struct limit *
find_limit(const char *name)
{
    struct limit *l;
    for(l = limits; l->name != ((void*)0); l++)
 if(strcasecmp(name, l->name) == 0)
     return l;
    return ((void*)0);
}
