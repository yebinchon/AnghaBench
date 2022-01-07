
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* any_initializer (char*,char const*) ;

__attribute__((used)) static char *
string_variable(const char *type)
{
    return any_initializer("_s_%s", type);
}
