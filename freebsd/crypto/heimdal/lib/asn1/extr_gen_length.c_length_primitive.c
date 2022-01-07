
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int codefile ;
 int fprintf (int ,char*,char const*,char const*,char const*) ;

__attribute__((used)) static void
length_primitive (const char *typename,
    const char *name,
    const char *variable)
{
    fprintf (codefile, "%s += der_length_%s(%s);\n", variable, typename, name);
}
