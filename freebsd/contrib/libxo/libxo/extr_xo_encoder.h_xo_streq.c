
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static inline int
xo_streq (const char *one, const char *two)
{
    return strcmp(one, two) == 0;
}
