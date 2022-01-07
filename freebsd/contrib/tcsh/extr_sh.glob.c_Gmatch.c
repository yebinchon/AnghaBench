
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int Gnmatch (int const*,int const*,int *) ;

int
Gmatch(const Char *string, const Char *pattern)
{
    return Gnmatch(string, pattern, ((void*)0));
}
