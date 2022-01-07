
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* any_initializer (char*,char const*) ;

__attribute__((used)) static char *
name_initializer(const char *type)
{
    return any_initializer("_%s_data", type);
}
