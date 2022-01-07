
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*,int,char const*,char*,char*) ;

__attribute__((used)) static int
print_unit (char *s, size_t len, int divisor, const char *name, int rem)
{
    return snprintf (s, len, "%u %s%s%s",
       divisor, name,
       divisor == 1 ? "" : "s",
       rem > 0 ? " " : "");
}
