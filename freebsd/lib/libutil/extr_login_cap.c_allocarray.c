
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const** internal_array ;
 size_t internal_arraysz ;
 char** reallocarray (char const**,size_t,int) ;

__attribute__((used)) static const char **
allocarray(size_t sz)
{
    static const char **p;

    if (sz <= internal_arraysz)
 p = internal_array;
    else if ((p = reallocarray(internal_array, sz, sizeof(char*))) != ((void*)0)) {
 internal_arraysz = sz;
 internal_array = p;
    }
    return p;
}
