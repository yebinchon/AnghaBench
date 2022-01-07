
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strstr (char const*,char const*) ;

__attribute__((used)) static int selected(const char * filter, const char * name)
{
    if (filter == 0)
        return 1;
    return strstr(name, filter) ? 1 : 0;
}
