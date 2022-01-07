
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const* const,char const* const) ;

__attribute__((used)) static int sk_strcmp(const char *const *a, const char *const *b)
{
    return strcmp(*a, *b);
}
