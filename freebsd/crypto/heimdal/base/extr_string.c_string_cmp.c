
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (void*,void*) ;

__attribute__((used)) static int
string_cmp(void *a, void *b)
{
    return strcmp(a, b);
}
