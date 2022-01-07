
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int codefile ;
 int fprintf (int ,char*,char const*,char const*) ;

__attribute__((used)) static void
free_primitive (const char *typename, const char *name)
{
    fprintf (codefile, "der_free_%s(%s);\n", typename, name);
}
