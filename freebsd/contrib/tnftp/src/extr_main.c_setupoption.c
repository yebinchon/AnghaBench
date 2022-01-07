
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int set_option (char const*,char const*,int ) ;

__attribute__((used)) static void
setupoption(const char *name, const char *value, const char *defaultvalue)
{
 set_option(name, value ? value : defaultvalue, 0);
}
