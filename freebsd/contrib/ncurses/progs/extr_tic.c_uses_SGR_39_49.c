
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strstr (char const*,char*) ;

__attribute__((used)) static bool
uses_SGR_39_49(const char *value)
{
    return (strstr(value, "39;49") != 0
     || strstr(value, "49;39") != 0);
}
