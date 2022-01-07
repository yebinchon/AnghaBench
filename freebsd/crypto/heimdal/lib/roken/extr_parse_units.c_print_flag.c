
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*,char const*,char*) ;

__attribute__((used)) static int
print_flag (char *s, size_t len, int divisor, const char *name, int rem)
{
    return snprintf (s, len, "%s%s", name, rem > 0 ? ", " : "");
}
